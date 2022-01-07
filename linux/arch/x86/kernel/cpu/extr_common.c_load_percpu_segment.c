
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_GS_BASE ;
 int __KERNEL_PERCPU ;
 int __loadsegment_simple (int ,int ) ;
 int cpu_kernelmode_gs_base (int) ;
 int fs ;
 int gs ;
 int load_stack_canary_segment () ;
 int loadsegment (int ,int ) ;
 int wrmsrl (int ,int ) ;

void load_percpu_segment(int cpu)
{



 __loadsegment_simple(gs, 0);
 wrmsrl(MSR_GS_BASE, cpu_kernelmode_gs_base(cpu));

 load_stack_canary_segment();
}
