
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int cpu; } ;
struct TYPE_4__ {TYPE_1__ hard; } ;
struct thread_info {TYPE_2__ vfpstate; } ;


 TYPE_2__** vfp_current_hw_state ;

__attribute__((used)) static bool vfp_state_in_hw(unsigned int cpu, struct thread_info *thread)
{




 return vfp_current_hw_state[cpu] == &thread->vfpstate;
}
