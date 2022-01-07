
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int fpsr; } ;
struct TYPE_5__ {TYPE_3__ fpsimd_state; } ;
struct TYPE_6__ {TYPE_1__ uw; int sve_vl; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;


 int TIF_SVE ;
 int WARN_ON (int) ;
 TYPE_4__* current ;
 int fpsimd_load_state (TYPE_3__*) ;
 int have_cpu_fpsimd_context () ;
 int sve_load_state (int ,int *,scalar_t__) ;
 int sve_pffr (TYPE_2__*) ;
 scalar_t__ sve_vq_from_vl (int ) ;
 scalar_t__ system_supports_sve () ;
 scalar_t__ test_thread_flag (int ) ;

__attribute__((used)) static void task_fpsimd_load(void)
{
 WARN_ON(!have_cpu_fpsimd_context());

 if (system_supports_sve() && test_thread_flag(TIF_SVE))
  sve_load_state(sve_pffr(&current->thread),
          &current->thread.uw.fpsimd_state.fpsr,
          sve_vq_from_vl(current->thread.sve_vl) - 1);
 else
  fpsimd_load_state(&current->thread.uw.fpsimd_state);
}
