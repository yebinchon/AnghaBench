
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt_sigframe_user_layout {int sve_offset; int esr_offset; int fpsimd_offset; } ;
struct fpsimd_context {int dummy; } ;
struct esr_context {int dummy; } ;
struct TYPE_3__ {int sve_vl; scalar_t__ fault_code; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int SVE_SIG_CONTEXT_SIZE (unsigned int) ;
 int TIF_SVE ;
 TYPE_2__* current ;
 int sigframe_alloc (struct rt_sigframe_user_layout*,int *,int) ;
 int sigframe_alloc_end (struct rt_sigframe_user_layout*) ;
 int sve_max_vl ;
 unsigned int sve_vq_from_vl (int) ;
 scalar_t__ system_supports_sve () ;
 scalar_t__ test_thread_flag (int ) ;

__attribute__((used)) static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
     bool add_all)
{
 int err;

 err = sigframe_alloc(user, &user->fpsimd_offset,
        sizeof(struct fpsimd_context));
 if (err)
  return err;


 if (add_all || current->thread.fault_code) {
  err = sigframe_alloc(user, &user->esr_offset,
         sizeof(struct esr_context));
  if (err)
   return err;
 }

 if (system_supports_sve()) {
  unsigned int vq = 0;

  if (add_all || test_thread_flag(TIF_SVE)) {
   int vl = sve_max_vl;

   if (!add_all)
    vl = current->thread.sve_vl;

   vq = sve_vq_from_vl(vl);
  }

  err = sigframe_alloc(user, &user->sve_offset,
         SVE_SIG_CONTEXT_SIZE(vq));
  if (err)
   return err;
 }

 return sigframe_alloc_end(user);
}
