
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_6__ {int * pr_regs; } ;
struct TYPE_7__ {int pr_q_entrysize; unsigned int pr_fsr; int pr_en; int * pr_q; scalar_t__ pr_qcnt; TYPE_1__ pr_fr; } ;
typedef TYPE_2__ elf_fpregset_t32 ;
struct TYPE_8__ {unsigned long pr_fprs; scalar_t__ pr_gsr; scalar_t__ pr_fsr; int * pr_regs; } ;
typedef TYPE_3__ elf_fpregset_t ;
struct TYPE_9__ {unsigned long* fpregs; unsigned long* fpsaved; scalar_t__* gsr; scalar_t__* xfsr; } ;


 unsigned long FPRS_DL ;
 unsigned long FPRS_DU ;
 unsigned long FPRS_FEF ;
 int TIF_32BIT ;
 TYPE_5__* current_thread_info () ;
 int memcpy (int *,unsigned long*,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ test_thread_flag (int ) ;

int dump_fpu (struct pt_regs * regs, elf_fpregset_t * fpregs)
{
 unsigned long *kfpregs = current_thread_info()->fpregs;
 unsigned long fprs = current_thread_info()->fpsaved[0];

 if (test_thread_flag(TIF_32BIT)) {
  elf_fpregset_t32 *fpregs32 = (elf_fpregset_t32 *)fpregs;

  if (fprs & FPRS_DL)
   memcpy(&fpregs32->pr_fr.pr_regs[0], kfpregs,
          sizeof(unsigned int) * 32);
  else
   memset(&fpregs32->pr_fr.pr_regs[0], 0,
          sizeof(unsigned int) * 32);
  fpregs32->pr_qcnt = 0;
  fpregs32->pr_q_entrysize = 8;
  memset(&fpregs32->pr_q[0], 0,
         (sizeof(unsigned int) * 64));
  if (fprs & FPRS_FEF) {
   fpregs32->pr_fsr = (unsigned int) current_thread_info()->xfsr[0];
   fpregs32->pr_en = 1;
  } else {
   fpregs32->pr_fsr = 0;
   fpregs32->pr_en = 0;
  }
 } else {
  if(fprs & FPRS_DL)
   memcpy(&fpregs->pr_regs[0], kfpregs,
          sizeof(unsigned int) * 32);
  else
   memset(&fpregs->pr_regs[0], 0,
          sizeof(unsigned int) * 32);
  if(fprs & FPRS_DU)
   memcpy(&fpregs->pr_regs[16], kfpregs+16,
          sizeof(unsigned int) * 32);
  else
   memset(&fpregs->pr_regs[16], 0,
          sizeof(unsigned int) * 32);
  if(fprs & FPRS_FEF) {
   fpregs->pr_fsr = current_thread_info()->xfsr[0];
   fpregs->pr_gsr = current_thread_info()->gsr[0];
  } else {
   fpregs->pr_fsr = fpregs->pr_gsr = 0;
  }
  fpregs->pr_fprs = fprs;
 }
 return 1;
}
