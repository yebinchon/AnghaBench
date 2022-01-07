
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_fpu_soft_struct {int dummy; } ;
struct sh_fpu_hard_struct {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int CPU_HAS_FPU ;
 scalar_t__ HAVE_SOFTFP ;
 TYPE_1__ boot_cpu_data ;
 int xstate_size ;

void init_thread_xstate(void)
{
 if (boot_cpu_data.flags & CPU_HAS_FPU)
  xstate_size = sizeof(struct sh_fpu_hard_struct);
 else if (HAVE_SOFTFP)
  xstate_size = sizeof(struct sh_fpu_soft_struct);
 else
  xstate_size = 0;
}
