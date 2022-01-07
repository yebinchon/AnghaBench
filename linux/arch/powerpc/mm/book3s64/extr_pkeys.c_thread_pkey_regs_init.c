
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {int uamor; int iamr; int amr; } ;


 int pkey_amr_mask ;
 int pkey_disabled ;
 int pkey_iamr_mask ;
 int pkey_uamor_mask ;
 scalar_t__ static_branch_likely (int *) ;
 int write_amr (int ) ;
 int write_iamr (int ) ;
 int write_uamor (int ) ;

void thread_pkey_regs_init(struct thread_struct *thread)
{
 if (static_branch_likely(&pkey_disabled))
  return;

 thread->amr = pkey_amr_mask;
 thread->iamr = pkey_iamr_mask;
 thread->uamor = pkey_uamor_mask;

 write_uamor(pkey_uamor_mask);
 write_amr(pkey_amr_mask);
 write_iamr(pkey_iamr_mask);
}
