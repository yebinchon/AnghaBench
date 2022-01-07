
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu; } ;
struct TYPE_4__ {TYPE_1__ hard; } ;
struct thread_info {TYPE_2__ vfpstate; } ;


 int FPEXC ;
 int FPEXC_EN ;
 int NR_CPUS ;
 int fmrx (int ) ;
 int fmxr (int ,int) ;
 int ** vfp_current_hw_state ;
 scalar_t__ vfp_state_in_hw (unsigned int,struct thread_info*) ;

__attribute__((used)) static void vfp_force_reload(unsigned int cpu, struct thread_info *thread)
{
 if (vfp_state_in_hw(cpu, thread)) {
  fmxr(FPEXC, fmrx(FPEXC) & ~FPEXC_EN);
  vfp_current_hw_state[cpu] = ((void*)0);
 }



}
