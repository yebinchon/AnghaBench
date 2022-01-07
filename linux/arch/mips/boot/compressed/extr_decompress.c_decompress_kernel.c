
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BOOT_HEAP_SIZE ;
 int CONFIG_MIPS_RAW_APPENDED_DTB ;
 scalar_t__ FDT_MAGIC ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long VMLINUX_LOAD_ADDRESS_ULL ;
 int __appended_dtb ;
 int __decompress (char*,unsigned long,int ,int ,void*,int ,int ,int ) ;
 int __image_begin ;
 int __image_end ;
 int error ;
 scalar_t__ fdt_magic (void*) ;
 unsigned int fdt_totalsize (void*) ;
 scalar_t__ free_mem_end_ptr ;
 unsigned long free_mem_ptr ;
 unsigned int le32_to_cpup (void*) ;
 int memcpy (void*,int ,unsigned int) ;
 int puthex (unsigned long) ;
 int puts (char*) ;

void decompress_kernel(unsigned long boot_heap_start)
{
 unsigned long zimage_start, zimage_size;

 zimage_start = (unsigned long)(&__image_begin);
 zimage_size = (unsigned long)(&__image_end) -
     (unsigned long)(&__image_begin);

 puts("zimage at:     ");
 puthex(zimage_start);
 puts(" ");
 puthex(zimage_size + zimage_start);
 puts("\n");


 free_mem_ptr = boot_heap_start;
 free_mem_end_ptr = boot_heap_start + BOOT_HEAP_SIZE;


 puts("Uncompressing Linux at load address ");
 puthex(VMLINUX_LOAD_ADDRESS_ULL);
 puts("\n");


 __decompress((char *)zimage_start, zimage_size, 0, 0,
     (void *)VMLINUX_LOAD_ADDRESS_ULL, 0, 0, error);

 if (IS_ENABLED(CONFIG_MIPS_RAW_APPENDED_DTB) &&
     fdt_magic((void *)&__appended_dtb) == FDT_MAGIC) {
  unsigned int image_size, dtb_size;

  dtb_size = fdt_totalsize((void *)&__appended_dtb);


  image_size = le32_to_cpup((void *)&__image_end - 4);


  memcpy((void *)VMLINUX_LOAD_ADDRESS_ULL + image_size,
         __appended_dtb, dtb_size);
 }


 puts("Now, booting the kernel...\n");
}
