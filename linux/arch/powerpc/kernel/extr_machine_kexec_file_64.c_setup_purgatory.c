
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int dummy; } ;
typedef int kernel_load_addr ;
typedef int fdt_load_addr ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SLAVE_CODE_SIZE ;
 int kexec_purgatory_get_set_symbol (struct kimage*,char*,...) ;
 int kfree (unsigned int*) ;
 unsigned int* kmalloc (int,int ) ;
 int memcpy (unsigned int*,void const*,int) ;

int setup_purgatory(struct kimage *image, const void *slave_code,
      const void *fdt, unsigned long kernel_load_addr,
      unsigned long fdt_load_addr)
{
 unsigned int *slave_code_buf, master_entry;
 int ret;

 slave_code_buf = kmalloc(SLAVE_CODE_SIZE, GFP_KERNEL);
 if (!slave_code_buf)
  return -ENOMEM;


 ret = kexec_purgatory_get_set_symbol(image, "purgatory_start",
          slave_code_buf, SLAVE_CODE_SIZE,
          1);
 if (ret) {
  kfree(slave_code_buf);
  return ret;
 }

 master_entry = slave_code_buf[0];
 memcpy(slave_code_buf, slave_code, SLAVE_CODE_SIZE);
 slave_code_buf[0] = master_entry;
 ret = kexec_purgatory_get_set_symbol(image, "purgatory_start",
          slave_code_buf, SLAVE_CODE_SIZE,
          0);
 kfree(slave_code_buf);

 ret = kexec_purgatory_get_set_symbol(image, "kernel", &kernel_load_addr,
          sizeof(kernel_load_addr), 0);
 if (ret)
  return ret;
 ret = kexec_purgatory_get_set_symbol(image, "dt_offset", &fdt_load_addr,
          sizeof(fdt_load_addr), 0);
 if (ret)
  return ret;

 return 0;
}
