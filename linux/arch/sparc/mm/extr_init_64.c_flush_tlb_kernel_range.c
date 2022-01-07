
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HI_OBP_ADDRESS ;
 unsigned long LOW_OBP_ADDRESS ;
 int do_flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int flush_tsb_kernel_range (unsigned long,unsigned long) ;

void flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 if (start < HI_OBP_ADDRESS && end > LOW_OBP_ADDRESS) {
  if (start < LOW_OBP_ADDRESS) {
   flush_tsb_kernel_range(start, LOW_OBP_ADDRESS);
   do_flush_tlb_kernel_range(start, LOW_OBP_ADDRESS);
  }
  if (end > HI_OBP_ADDRESS) {
   flush_tsb_kernel_range(HI_OBP_ADDRESS, end);
   do_flush_tlb_kernel_range(HI_OBP_ADDRESS, end);
  }
 } else {
  flush_tsb_kernel_range(start, end);
  do_flush_tlb_kernel_range(start, end);
 }
}
