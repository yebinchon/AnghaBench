
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int context; } ;


 int GET_HIGH_SLICE_INDEX (unsigned long) ;
 int GET_LOW_SLICE_INDEX (unsigned long) ;
 int VM_BUG_ON (int ) ;
 unsigned char* mm_ctx_high_slices (int *) ;
 unsigned char* mm_ctx_low_slices (int *) ;
 int radix_enabled () ;
 scalar_t__ slice_addr_is_low (unsigned long) ;

unsigned int get_slice_psize(struct mm_struct *mm, unsigned long addr)
{
 unsigned char *psizes;
 int index, mask_index;

 VM_BUG_ON(radix_enabled());

 if (slice_addr_is_low(addr)) {
  psizes = mm_ctx_low_slices(&mm->context);
  index = GET_LOW_SLICE_INDEX(addr);
 } else {
  psizes = mm_ctx_high_slices(&mm->context);
  index = GET_HIGH_SLICE_INDEX(addr);
 }
 mask_index = index & 0x1;
 return (psizes[index >> 1] >> (mask_index * 4)) & 0xf;
}
