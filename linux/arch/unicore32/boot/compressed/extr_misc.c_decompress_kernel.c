
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __decompress (scalar_t__,scalar_t__,int *,int *,unsigned char*,int ,int *,int ) ;
 int arch_decomp_puts (char*) ;
 int arch_decomp_setup () ;
 int error ;
 unsigned long free_mem_end_ptr ;
 unsigned long free_mem_ptr ;
 unsigned long get_unaligned_le32 (unsigned char*) ;
 scalar_t__ input_data ;
 scalar_t__ input_data_end ;
 unsigned char* output_data ;
 unsigned long output_ptr ;

unsigned long decompress_kernel(unsigned long output_start,
  unsigned long free_mem_ptr_p,
  unsigned long free_mem_ptr_end_p)
{
 unsigned char *tmp;

 output_data = (unsigned char *)output_start;
 free_mem_ptr = free_mem_ptr_p;
 free_mem_end_ptr = free_mem_ptr_end_p;

 arch_decomp_setup();

 tmp = (unsigned char *) (((unsigned long)input_data_end) - 4);
 output_ptr = get_unaligned_le32(tmp);

 arch_decomp_puts("Uncompressing Linux...");
 __decompress(input_data, input_data_end - input_data, ((void*)0), ((void*)0),
   output_data, 0, ((void*)0), error);
 arch_decomp_puts(" done, booting the kernel.\n");
 return output_ptr;
}
