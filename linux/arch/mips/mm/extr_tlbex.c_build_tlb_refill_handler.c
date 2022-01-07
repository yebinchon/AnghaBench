
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vmbits; } ;


 int CONFIG_XPA ;
 scalar_t__ IS_ENABLED (int ) ;
 int PAGE_SHIFT ;
 int PGDIR_SHIFT ;
 int PGD_ORDER ;
 int allocate_kscratch () ;
 int build_loongson3_tlb_refill_handler () ;
 int build_r3000_tlb_load_handler () ;
 int build_r3000_tlb_modify_handler () ;
 int build_r3000_tlb_refill_handler () ;
 int build_r3000_tlb_store_handler () ;
 int build_r4000_tlb_load_handler () ;
 int build_r4000_tlb_modify_handler () ;
 int build_r4000_tlb_refill_handler () ;
 int build_r4000_tlb_store_handler () ;
 int build_setup_pgd () ;
 int check_for_high_segbits ;
 int check_pabits () ;
 int config_htw_params () ;
 int config_xpa_params () ;
 scalar_t__ cpu_has_3kex ;
 scalar_t__ cpu_has_htw ;
 scalar_t__ cpu_has_ldpte ;
 int cpu_has_rixi ;
 scalar_t__ cpu_has_xpa ;
 TYPE_1__ current_cpu_data ;
 int flush_tlb_handlers () ;
 int output_pgtable_bits_defines () ;
 int panic (char*) ;
 int scratch_reg ;
 int setup_pw () ;

void build_tlb_refill_handler(void)
{





 static int run_once = 0;

 if (IS_ENABLED(CONFIG_XPA) && !cpu_has_rixi)
  panic("Kernels supporting XPA currently require CPUs with RIXI");

 output_pgtable_bits_defines();
 check_pabits();





 if (cpu_has_3kex) {

  if (!run_once) {
   build_setup_pgd();
   build_r3000_tlb_refill_handler();
   build_r3000_tlb_load_handler();
   build_r3000_tlb_store_handler();
   build_r3000_tlb_modify_handler();
   flush_tlb_handlers();
   run_once++;
  }



  return;
 }

 if (cpu_has_ldpte)
  setup_pw();

 if (!run_once) {
  scratch_reg = allocate_kscratch();
  build_setup_pgd();
  build_r4000_tlb_load_handler();
  build_r4000_tlb_store_handler();
  build_r4000_tlb_modify_handler();
  if (cpu_has_ldpte)
   build_loongson3_tlb_refill_handler();
  else
   build_r4000_tlb_refill_handler();
  flush_tlb_handlers();
  run_once++;
 }
 if (cpu_has_xpa)
  config_xpa_params();
 if (cpu_has_htw)
  config_htw_params();
}
