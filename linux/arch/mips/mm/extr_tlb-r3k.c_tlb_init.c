
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int build_tlb_refill_handler () ;
 int current_cpu_type () ;
 int local_flush_tlb_from (int ) ;
 int r3k_have_wired_reg ;
 int write_c0_wired (int ) ;

void tlb_init(void)
{
 switch (current_cpu_type()) {
 case 129:
 case 128:
  r3k_have_wired_reg = 1;
  write_c0_wired(0);
  break;
 }
 local_flush_tlb_from(0);
 build_tlb_refill_handler();
}
