
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long dtb_mem; void* dtb; } ;
struct kimage {TYPE_1__ arch; } ;
struct kexec_buf {unsigned long buf_min; char* buffer; unsigned long bufsz; unsigned long mem; unsigned long memsz; int top_down; scalar_t__ buf_max; scalar_t__ buf_align; struct kimage* image; } ;


 void* KEXEC_BUF_MEM_UNKNOWN ;
 scalar_t__ SZ_1G ;
 scalar_t__ SZ_2M ;
 scalar_t__ ULONG_MAX ;
 int create_dtb (struct kimage*,unsigned long,unsigned long,char*,void**) ;
 unsigned long fdt_totalsize (void*) ;
 int kexec_add_buffer (struct kexec_buf*) ;
 int pr_debug (char*,unsigned long,unsigned long,unsigned long) ;
 int pr_err (char*) ;
 scalar_t__ round_down (unsigned long,scalar_t__) ;
 int vfree (void*) ;

int load_other_segments(struct kimage *image,
   unsigned long kernel_load_addr,
   unsigned long kernel_size,
   char *initrd, unsigned long initrd_len,
   char *cmdline)
{
 struct kexec_buf kbuf;
 void *dtb = ((void*)0);
 unsigned long initrd_load_addr = 0, dtb_len;
 int ret = 0;

 kbuf.image = image;

 kbuf.buf_min = kernel_load_addr + kernel_size;


 if (initrd) {
  kbuf.buffer = initrd;
  kbuf.bufsz = initrd_len;
  kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
  kbuf.memsz = initrd_len;
  kbuf.buf_align = 0;

  kbuf.buf_max = round_down(kernel_load_addr, SZ_1G)
      + (unsigned long)SZ_1G * 32;
  kbuf.top_down = 0;

  ret = kexec_add_buffer(&kbuf);
  if (ret)
   goto out_err;
  initrd_load_addr = kbuf.mem;

  pr_debug("Loaded initrd at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
    initrd_load_addr, initrd_len, initrd_len);
 }


 ret = create_dtb(image, initrd_load_addr, initrd_len, cmdline, &dtb);
 if (ret) {
  pr_err("Preparing for new dtb failed\n");
  goto out_err;
 }

 dtb_len = fdt_totalsize(dtb);
 kbuf.buffer = dtb;
 kbuf.bufsz = dtb_len;
 kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
 kbuf.memsz = dtb_len;

 kbuf.buf_align = SZ_2M;
 kbuf.buf_max = ULONG_MAX;
 kbuf.top_down = 1;

 ret = kexec_add_buffer(&kbuf);
 if (ret)
  goto out_err;
 image->arch.dtb = dtb;
 image->arch.dtb_mem = kbuf.mem;

 pr_debug("Loaded dtb at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
   kbuf.mem, dtb_len, dtb_len);

 return 0;

out_err:
 vfree(dtb);
 return ret;
}
