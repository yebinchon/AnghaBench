
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_4__ {int def_type; TYPE_1__* var_ranges; } ;
struct TYPE_3__ {int mask_lo; int base_lo; scalar_t__ mask_hi; scalar_t__ base_hi; } ;


 int MTRR_TYPE_INVALID ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int WARN_ON (int) ;
 scalar_t__ check_type_overlap (int*,int*) ;
 int get_mtrr_size (int) ;
 TYPE_2__ mtrr_state ;
 int num_var_ranges ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u8 mtrr_type_lookup_variable(u64 start, u64 end, u64 *partial_end,
        int *repeat, u8 *uniform)
{
 int i;
 u64 base, mask;
 u8 prev_match, curr_match;

 *repeat = 0;
 *uniform = 1;


 end--;

 prev_match = MTRR_TYPE_INVALID;
 for (i = 0; i < num_var_ranges; ++i) {
  unsigned short start_state, end_state, inclusive;

  if (!(mtrr_state.var_ranges[i].mask_lo & (1 << 11)))
   continue;

  base = (((u64)mtrr_state.var_ranges[i].base_hi) << 32) +
         (mtrr_state.var_ranges[i].base_lo & PAGE_MASK);
  mask = (((u64)mtrr_state.var_ranges[i].mask_hi) << 32) +
         (mtrr_state.var_ranges[i].mask_lo & PAGE_MASK);

  start_state = ((start & mask) == (base & mask));
  end_state = ((end & mask) == (base & mask));
  inclusive = ((start < base) && (end > base));

  if ((start_state != end_state) || inclusive) {
   if (start_state)
    *partial_end = base + get_mtrr_size(mask);
   else
    *partial_end = base;

   if (unlikely(*partial_end <= start)) {
    WARN_ON(1);
    *partial_end = start + PAGE_SIZE;
   }

   end = *partial_end - 1;
   *repeat = 1;
   *uniform = 0;
  }

  if ((start & mask) != (base & mask))
   continue;

  curr_match = mtrr_state.var_ranges[i].base_lo & 0xff;
  if (prev_match == MTRR_TYPE_INVALID) {
   prev_match = curr_match;
   continue;
  }

  *uniform = 0;
  if (check_type_overlap(&prev_match, &curr_match))
   return curr_match;
 }

 if (prev_match != MTRR_TYPE_INVALID)
  return prev_match;

 return mtrr_state.def_type;
}
