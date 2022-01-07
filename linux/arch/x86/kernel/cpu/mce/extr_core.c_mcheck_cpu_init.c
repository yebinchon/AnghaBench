
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_x86 {int dummy; } ;
struct TYPE_2__ {int disabled; } ;


 scalar_t__ __mcheck_cpu_ancient_init (struct cpuinfo_x86*) ;
 scalar_t__ __mcheck_cpu_apply_quirks (struct cpuinfo_x86*) ;
 int __mcheck_cpu_cap_init () ;
 int __mcheck_cpu_check_banks () ;
 int __mcheck_cpu_init_clear_banks () ;
 int __mcheck_cpu_init_early (struct cpuinfo_x86*) ;
 int __mcheck_cpu_init_generic () ;
 int __mcheck_cpu_init_vendor (struct cpuinfo_x86*) ;
 int __mcheck_cpu_setup_timer () ;
 int do_machine_check ;
 int machine_check_vector ;
 TYPE_1__ mca_cfg ;
 int mce_available (struct cpuinfo_x86*) ;
 scalar_t__ mce_gen_pool_init () ;
 int pr_emerg (char*) ;

void mcheck_cpu_init(struct cpuinfo_x86 *c)
{
 if (mca_cfg.disabled)
  return;

 if (__mcheck_cpu_ancient_init(c))
  return;

 if (!mce_available(c))
  return;

 __mcheck_cpu_cap_init();

 if (__mcheck_cpu_apply_quirks(c) < 0) {
  mca_cfg.disabled = 1;
  return;
 }

 if (mce_gen_pool_init()) {
  mca_cfg.disabled = 1;
  pr_emerg("Couldn't allocate MCE records pool!\n");
  return;
 }

 machine_check_vector = do_machine_check;

 __mcheck_cpu_init_early(c);
 __mcheck_cpu_init_generic();
 __mcheck_cpu_init_vendor(c);
 __mcheck_cpu_init_clear_banks();
 __mcheck_cpu_check_banks();
 __mcheck_cpu_setup_timer();
}
