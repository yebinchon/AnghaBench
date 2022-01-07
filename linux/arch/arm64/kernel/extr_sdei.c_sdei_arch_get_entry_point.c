
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONDUIT_HVC ;
 int CONFIG_VMAP_STACK ;
 scalar_t__ IS_ENABLED (int ) ;
 int SDEI_EXIT_HVC ;
 int SDEI_EXIT_SMC ;
 unsigned long TRAMP_VALIAS ;
 scalar_t__ __entry_tramp_text_start ;
 scalar_t__ __sdei_asm_entry_trampoline ;
 scalar_t__ __sdei_asm_handler ;
 scalar_t__ arm64_kernel_unmapped_at_el0 () ;
 scalar_t__ init_sdei_stacks () ;
 scalar_t__ is_hyp_mode_available () ;
 int is_kernel_in_hyp_mode () ;
 int pr_err (char*) ;
 int sdei_exit_mode ;

unsigned long sdei_arch_get_entry_point(int conduit)
{






 if (is_hyp_mode_available() && !is_kernel_in_hyp_mode()) {
  pr_err("Not supported on this hardware/boot configuration\n");
  return 0;
 }

 if (IS_ENABLED(CONFIG_VMAP_STACK)) {
  if (init_sdei_stacks())
   return 0;
 }

 sdei_exit_mode = (conduit == CONDUIT_HVC) ? SDEI_EXIT_HVC : SDEI_EXIT_SMC;
  return (unsigned long)__sdei_asm_handler;

}
