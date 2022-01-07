
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hv_reenlightenment_control {scalar_t__ target_vp; } ;


 int HV_X64_MSR_REENLIGHTENMENT_CONTROL ;
 int HV_X64_MSR_VP_ASSIST_PAGE ;
 int cpu_online_mask ;
 unsigned int cpumask_any_but (int ,unsigned int) ;
 int free_page (unsigned long) ;
 int * hv_reenlightenment_cb ;
 scalar_t__* hv_vp_assist_page ;
 scalar_t__* hv_vp_index ;
 int hyperv_pcpu_input_arg ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rdmsrl (int ,int ) ;
 scalar_t__ this_cpu_ptr (int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static int hv_cpu_die(unsigned int cpu)
{
 struct hv_reenlightenment_control re_ctrl;
 unsigned int new_cpu;
 unsigned long flags;
 void **input_arg;
 void *input_pg = ((void*)0);

 local_irq_save(flags);
 input_arg = (void **)this_cpu_ptr(hyperv_pcpu_input_arg);
 input_pg = *input_arg;
 *input_arg = ((void*)0);
 local_irq_restore(flags);
 free_page((unsigned long)input_pg);

 if (hv_vp_assist_page && hv_vp_assist_page[cpu])
  wrmsrl(HV_X64_MSR_VP_ASSIST_PAGE, 0);

 if (hv_reenlightenment_cb == ((void*)0))
  return 0;

 rdmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));
 if (re_ctrl.target_vp == hv_vp_index[cpu]) {

  new_cpu = cpumask_any_but(cpu_online_mask, cpu);

  re_ctrl.target_vp = hv_vp_index[new_cpu];
  wrmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));
 }

 return 0;
}
