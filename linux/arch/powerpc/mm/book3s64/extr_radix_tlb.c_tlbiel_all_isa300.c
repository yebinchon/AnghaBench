
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_HVMODE ;
 int RIC_FLUSH_ALL ;
 int RIC_FLUSH_TLB ;
 scalar_t__ early_cpu_has_feature (int ) ;
 int tlbiel_radix_set_isa300 (unsigned int,unsigned int,int ,int ,int) ;

__attribute__((used)) static void tlbiel_all_isa300(unsigned int num_sets, unsigned int is)
{
 unsigned int set;

 asm volatile("ptesync": : :"memory");







 if (early_cpu_has_feature(CPU_FTR_HVMODE)) {

  tlbiel_radix_set_isa300(0, is, 0, RIC_FLUSH_ALL, 0);
  for (set = 1; set < num_sets; set++)
   tlbiel_radix_set_isa300(set, is, 0, RIC_FLUSH_TLB, 0);
 }


 tlbiel_radix_set_isa300(0, is, 0, RIC_FLUSH_ALL, 1);
 for (set = 1; set < num_sets; set++)
  tlbiel_radix_set_isa300(set, is, 0, RIC_FLUSH_TLB, 1);

 asm volatile("ptesync": : :"memory");
}
