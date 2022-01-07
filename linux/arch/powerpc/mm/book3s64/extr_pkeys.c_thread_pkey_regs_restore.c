
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {scalar_t__ amr; scalar_t__ iamr; scalar_t__ uamor; } ;


 int pkey_disabled ;
 scalar_t__ static_branch_likely (int *) ;
 int write_amr (scalar_t__) ;
 int write_iamr (scalar_t__) ;
 int write_uamor (scalar_t__) ;

void thread_pkey_regs_restore(struct thread_struct *new_thread,
         struct thread_struct *old_thread)
{
 if (static_branch_likely(&pkey_disabled))
  return;

 if (old_thread->amr != new_thread->amr)
  write_amr(new_thread->amr);
 if (old_thread->iamr != new_thread->iamr)
  write_iamr(new_thread->iamr);
 if (old_thread->uamor != new_thread->uamor)
  write_uamor(new_thread->uamor);
}
