
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleep_stack_data {int dummy; } ;




 int EBUSY ;
 int EINVAL ;
 scalar_t__ __cpu_suspend_enter (struct sleep_stack_data*) ;
 int __cpu_suspend_exit () ;
 int __hyp_idmap_text_end ;
 int __hyp_idmap_text_start ;
 int __hyp_text_end ;
 int __hyp_text_start ;
 int __idmap_text_end ;
 int __idmap_text_start ;
 int __mmuoff_data_end ;
 int __mmuoff_data_start ;
 int arm64_get_ssbd_state () ;
 int arm64_set_ssbd_mitigation (int) ;
 scalar_t__ cpus_are_stuck_in_kernel () ;
 int crash_post_resume () ;
 int crash_prepare_suspend () ;
 int dcache_clean_range (int ,int ) ;
 scalar_t__ el2_reset_needed () ;
 scalar_t__ in_suspend ;
 int local_daif_restore (unsigned long) ;
 unsigned long local_daif_save () ;
 int pr_err (char*) ;
 int sleep_cpu ;
 int smp_processor_id () ;
 int swsusp_save () ;

int swsusp_arch_suspend(void)
{
 int ret = 0;
 unsigned long flags;
 struct sleep_stack_data state;

 if (cpus_are_stuck_in_kernel()) {
  pr_err("Can't hibernate: no mechanism to offline secondary CPUs.\n");
  return -EBUSY;
 }

 flags = local_daif_save();

 if (__cpu_suspend_enter(&state)) {

  crash_prepare_suspend();

  sleep_cpu = smp_processor_id();
  ret = swsusp_save();
 } else {

  dcache_clean_range(__mmuoff_data_start, __mmuoff_data_end);
  dcache_clean_range(__idmap_text_start, __idmap_text_end);


  if (el2_reset_needed()) {
   dcache_clean_range(__hyp_idmap_text_start, __hyp_idmap_text_end);
   dcache_clean_range(__hyp_text_start, __hyp_text_end);
  }


  crash_post_resume();





  in_suspend = 0;

  sleep_cpu = -EINVAL;
  __cpu_suspend_exit();






  switch (arm64_get_ssbd_state()) {
  case 129:
  case 128:
   arm64_set_ssbd_mitigation(1);
  }
 }

 local_daif_restore(flags);

 return ret;
}
