
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfp_hard_struct {unsigned long fpexc; int fpinst2; int fpinst; int fpscr; int fpregs; } ;
struct user_vfp_exc {unsigned long fpexc; int fpinst2; int fpinst; } ;
struct user_vfp {int fpscr; int fpregs; } ;
struct TYPE_2__ {struct vfp_hard_struct hard; } ;
struct thread_info {TYPE_1__ vfpstate; } ;


 unsigned long FPEXC_EN ;
 unsigned long FPEXC_EX ;
 unsigned long FPEXC_FP2V ;
 struct thread_info* current_thread_info () ;
 int memcpy (int *,int *,int) ;
 int vfp_flush_hwstate (struct thread_info*) ;

int vfp_restore_user_hwstate(struct user_vfp *ufp, struct user_vfp_exc *ufp_exc)
{
 struct thread_info *thread = current_thread_info();
 struct vfp_hard_struct *hwstate = &thread->vfpstate.hard;
 unsigned long fpexc;


 vfp_flush_hwstate(thread);





 memcpy(&hwstate->fpregs, &ufp->fpregs, sizeof(hwstate->fpregs));



 hwstate->fpscr = ufp->fpscr;




 fpexc = ufp_exc->fpexc;


 fpexc |= FPEXC_EN;


 fpexc &= ~(FPEXC_EX | FPEXC_FP2V);
 hwstate->fpexc = fpexc;

 hwstate->fpinst = ufp_exc->fpinst;
 hwstate->fpinst2 = ufp_exc->fpinst2;

 return 0;
}
