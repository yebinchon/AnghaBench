
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int dummy; } ;


 size_t DTB_EXTRA_SPACE ;
 int EINVAL ;
 int ENOMEM ;
 int fdt_open_into (int ,void*,size_t) ;
 int fdt_pack (void*) ;
 size_t fdt_totalsize (int ) ;
 int initial_boot_params ;
 int setup_dtb (struct kimage*,unsigned long,unsigned long,char*,void*) ;
 size_t strlen (char*) ;
 int vfree (void*) ;
 void* vmalloc (size_t) ;

__attribute__((used)) static int create_dtb(struct kimage *image,
        unsigned long initrd_load_addr, unsigned long initrd_len,
        char *cmdline, void **dtb)
{
 void *buf;
 size_t buf_size;
 size_t cmdline_len;
 int ret;

 cmdline_len = cmdline ? strlen(cmdline) : 0;
 buf_size = fdt_totalsize(initial_boot_params)
   + cmdline_len + DTB_EXTRA_SPACE;

 for (;;) {
  buf = vmalloc(buf_size);
  if (!buf)
   return -ENOMEM;


  ret = fdt_open_into(initial_boot_params, buf, buf_size);
  if (ret)
   return -EINVAL;

  ret = setup_dtb(image, initrd_load_addr, initrd_len,
    cmdline, buf);
  if (ret) {
   vfree(buf);
   if (ret == -ENOMEM) {

    buf_size += DTB_EXTRA_SPACE;
    continue;
   } else {
    return ret;
   }
  }


  fdt_pack(buf);
  *dtb = buf;

  return 0;
 }
}
