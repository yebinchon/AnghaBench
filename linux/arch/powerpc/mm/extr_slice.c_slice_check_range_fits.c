
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct slice_mask {int low_slices; int high_slices; } ;
struct mm_struct {int dummy; } ;


 unsigned long ALIGN (unsigned long,unsigned long) ;
 unsigned long GET_HIGH_SLICE_INDEX (unsigned long) ;
 unsigned int GET_LOW_SLICE_INDEX (unsigned long) ;
 unsigned long SLICE_HIGH_SHIFT ;
 int SLICE_LOW_TOP ;
 scalar_t__ SLICE_NUM_HIGH ;
 unsigned long min (unsigned long,unsigned long) ;
 scalar_t__ slice_addr_is_low (unsigned long) ;
 int test_bit (unsigned long,int ) ;

__attribute__((used)) static bool slice_check_range_fits(struct mm_struct *mm,
      const struct slice_mask *available,
      unsigned long start, unsigned long len)
{
 unsigned long end = start + len - 1;
 u64 low_slices = 0;

 if (slice_addr_is_low(start)) {
  unsigned long mend = min(end,
      (unsigned long)(SLICE_LOW_TOP - 1));

  low_slices = (1u << (GET_LOW_SLICE_INDEX(mend) + 1))
    - (1u << GET_LOW_SLICE_INDEX(start));
 }
 if ((low_slices & available->low_slices) != low_slices)
  return 0;

 if (SLICE_NUM_HIGH && !slice_addr_is_low(end)) {
  unsigned long start_index = GET_HIGH_SLICE_INDEX(start);
  unsigned long align_end = ALIGN(end, (1UL << SLICE_HIGH_SHIFT));
  unsigned long count = GET_HIGH_SLICE_INDEX(align_end) - start_index;
  unsigned long i;

  for (i = start_index; i < start_index + count; i++) {
   if (!test_bit(i, available->high_slices))
    return 0;
  }
 }

 return 1;
}
