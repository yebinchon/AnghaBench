
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int phys_addr_t ;


 int BIT (int) ;
 int GENMASK_ULL (int,int) ;
 int __hyp_idmap_text_start ;
 int __pa_symbol (int ) ;
 int fls64 (int) ;
 int get_random_long () ;
 int high_memory ;
 int memblock_start_of_DRAM () ;
 scalar_t__ phys_to_virt (int ) ;
 int tag_lsb ;
 int tag_val ;
 int va_mask ;
 int vabits_actual ;

__attribute__((used)) static void compute_layout(void)
{
 phys_addr_t idmap_addr = __pa_symbol(__hyp_idmap_text_start);
 u64 hyp_va_msb;
 int kva_msb;


 hyp_va_msb = idmap_addr & BIT(vabits_actual - 1);
 hyp_va_msb ^= BIT(vabits_actual - 1);

 kva_msb = fls64((u64)phys_to_virt(memblock_start_of_DRAM()) ^
   (u64)(high_memory - 1));

 if (kva_msb == (vabits_actual - 1)) {





  va_mask = BIT(vabits_actual - 1) - 1;
  va_mask |= hyp_va_msb;
 } else {
  tag_lsb = kva_msb;
  va_mask = GENMASK_ULL(tag_lsb - 1, 0);
  tag_val = get_random_long() & GENMASK_ULL(vabits_actual - 2, tag_lsb);
  tag_val |= hyp_va_msb;
  tag_val >>= tag_lsb;
 }
}
