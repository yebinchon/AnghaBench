
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct kimage {int dummy; } ;
typedef int fdt64_t ;


 int EINVAL ;
 int ENOENT ;
 int FDT_ERR_NOTFOUND ;
 int PAGE_SIZE ;
 scalar_t__ __pa (int ) ;
 int delete_fdt_mem_rsv (void*,scalar_t__,scalar_t__) ;
 scalar_t__ fdt64_to_cpu (int const) ;
 int fdt_add_mem_rsv (void*,unsigned long,unsigned long) ;
 int fdt_add_subnode (void*,int,char*) ;
 int fdt_delprop (void*,int,char*) ;
 void* fdt_getprop (void*,int,char*,int *) ;
 int fdt_path_offset (void*,char*) ;
 int fdt_setprop (void*,int,char*,int *,int ) ;
 int fdt_setprop_string (void*,int,char*,char const*) ;
 int fdt_setprop_u64 (void*,int,char*,unsigned long) ;
 int fdt_strerror (int) ;
 scalar_t__ fdt_totalsize (int ) ;
 int initial_boot_params ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;
 scalar_t__ round_up (scalar_t__,int ) ;
 int setup_ima_buffer (struct kimage const*,void*,int) ;

int setup_new_fdt(const struct kimage *image, void *fdt,
    unsigned long initrd_load_addr, unsigned long initrd_len,
    const char *cmdline)
{
 int ret, chosen_node;
 const void *prop;


 ret = delete_fdt_mem_rsv(fdt, __pa(initial_boot_params),
     fdt_totalsize(initial_boot_params));
 if (ret == 0)
  pr_debug("Removed old device tree reservation.\n");
 else if (ret != -ENOENT)
  return ret;

 chosen_node = fdt_path_offset(fdt, "/chosen");
 if (chosen_node == -FDT_ERR_NOTFOUND) {
  chosen_node = fdt_add_subnode(fdt, fdt_path_offset(fdt, "/"),
           "chosen");
  if (chosen_node < 0) {
   pr_err("Error creating /chosen.\n");
   return -EINVAL;
  }
 } else if (chosen_node < 0) {
  pr_err("Malformed device tree: error reading /chosen.\n");
  return -EINVAL;
 }


 prop = fdt_getprop(fdt, chosen_node, "linux,initrd-start", ((void*)0));
 if (prop) {
  uint64_t tmp_start, tmp_end, tmp_size;

  tmp_start = fdt64_to_cpu(*((const fdt64_t *) prop));

  prop = fdt_getprop(fdt, chosen_node, "linux,initrd-end", ((void*)0));
  if (!prop) {
   pr_err("Malformed device tree.\n");
   return -EINVAL;
  }
  tmp_end = fdt64_to_cpu(*((const fdt64_t *) prop));





  tmp_size = tmp_end - tmp_start;
  ret = delete_fdt_mem_rsv(fdt, tmp_start, tmp_size);
  if (ret == -ENOENT)
   ret = delete_fdt_mem_rsv(fdt, tmp_start,
       round_up(tmp_size, PAGE_SIZE));
  if (ret == 0)
   pr_debug("Removed old initrd reservation.\n");
  else if (ret != -ENOENT)
   return ret;


  if (initrd_len == 0) {
   ret = fdt_delprop(fdt, chosen_node,
       "linux,initrd-start");
   if (ret) {
    pr_err("Error deleting linux,initrd-start.\n");
    return -EINVAL;
   }

   ret = fdt_delprop(fdt, chosen_node, "linux,initrd-end");
   if (ret) {
    pr_err("Error deleting linux,initrd-end.\n");
    return -EINVAL;
   }
  }
 }

 if (initrd_len) {
  ret = fdt_setprop_u64(fdt, chosen_node,
          "linux,initrd-start",
          initrd_load_addr);
  if (ret < 0)
   goto err;


  ret = fdt_setprop_u64(fdt, chosen_node, "linux,initrd-end",
          initrd_load_addr + initrd_len);
  if (ret < 0)
   goto err;

  ret = fdt_add_mem_rsv(fdt, initrd_load_addr, initrd_len);
  if (ret) {
   pr_err("Error reserving initrd memory: %s\n",
          fdt_strerror(ret));
   return -EINVAL;
  }
 }

 if (cmdline != ((void*)0)) {
  ret = fdt_setprop_string(fdt, chosen_node, "bootargs", cmdline);
  if (ret < 0)
   goto err;
 } else {
  ret = fdt_delprop(fdt, chosen_node, "bootargs");
  if (ret && ret != -FDT_ERR_NOTFOUND) {
   pr_err("Error deleting bootargs.\n");
   return -EINVAL;
  }
 }

 ret = setup_ima_buffer(image, fdt, chosen_node);
 if (ret) {
  pr_err("Error setting up the new device tree.\n");
  return ret;
 }

 ret = fdt_setprop(fdt, chosen_node, "linux,booted-from-kexec", ((void*)0), 0);
 if (ret)
  goto err;

 return 0;

err:
 pr_err("Error setting up the new device tree.\n");
 return -EINVAL;
}
