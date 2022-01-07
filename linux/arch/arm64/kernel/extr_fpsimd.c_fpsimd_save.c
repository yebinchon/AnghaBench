
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpsimd_last_state_struct {scalar_t__ sve_vl; TYPE_1__* st; scalar_t__ sve_state; } ;
struct TYPE_2__ {int fpsr; } ;


 int SIGKILL ;
 int SI_KERNEL ;
 int TIF_FOREIGN_FPSTATE ;
 int TIF_SVE ;
 scalar_t__ WARN_ON (int) ;
 int force_signal_inject (int ,int ,int ) ;
 int fpsimd_last_state ;
 int fpsimd_save_state (TYPE_1__*) ;
 int have_cpu_fpsimd_context () ;
 int sve_ffr_offset (scalar_t__) ;
 scalar_t__ sve_get_vl () ;
 int sve_save_state (char*,int *) ;
 scalar_t__ system_supports_sve () ;
 scalar_t__ test_thread_flag (int ) ;
 struct fpsimd_last_state_struct* this_cpu_ptr (int *) ;

__attribute__((used)) static void fpsimd_save(void)
{
 struct fpsimd_last_state_struct const *last =
  this_cpu_ptr(&fpsimd_last_state);


 WARN_ON(!have_cpu_fpsimd_context());

 if (!test_thread_flag(TIF_FOREIGN_FPSTATE)) {
  if (system_supports_sve() && test_thread_flag(TIF_SVE)) {
   if (WARN_ON(sve_get_vl() != last->sve_vl)) {





    force_signal_inject(SIGKILL, SI_KERNEL, 0);
    return;
   }

   sve_save_state((char *)last->sve_state +
      sve_ffr_offset(last->sve_vl),
           &last->st->fpsr);
  } else
   fpsimd_save_state(last->st);
 }
}
