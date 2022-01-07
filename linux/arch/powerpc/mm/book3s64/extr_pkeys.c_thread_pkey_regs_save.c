
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {int uamor; int iamr; int amr; } ;


 int pkey_disabled ;
 int read_amr () ;
 int read_iamr () ;
 int read_uamor () ;
 scalar_t__ static_branch_likely (int *) ;

void thread_pkey_regs_save(struct thread_struct *thread)
{
 if (static_branch_likely(&pkey_disabled))
  return;




 thread->amr = read_amr();
 thread->iamr = read_iamr();
 thread->uamor = read_uamor();
}
