
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_NIOS2_KERNEL_REGION_BASE ;
 int CONFIG_NIOS2_MEM_BASE ;
 scalar_t__ HEAP_SIZE ;
 int _end ;
 int console_init () ;
 scalar_t__ free_mem_end_ptr ;
 unsigned long free_mem_ptr ;
 int gunzip () ;
 int makecrc () ;
 void* output_data ;
 scalar_t__ output_ptr ;
 int puts (char*) ;

void decompress_kernel(void)
{
 output_data = (void *) (CONFIG_NIOS2_MEM_BASE |
    CONFIG_NIOS2_KERNEL_REGION_BASE);
 output_ptr = 0;
 free_mem_ptr = (unsigned long)&_end;
 free_mem_end_ptr = free_mem_ptr + HEAP_SIZE;

 console_init();
 makecrc();
 puts("Uncompressing Linux... ");
 gunzip();
 puts("Ok, booting the kernel.\n");
}
