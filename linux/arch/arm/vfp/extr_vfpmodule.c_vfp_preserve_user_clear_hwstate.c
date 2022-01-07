
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfp_hard_struct {int fpscr; int fpinst2; int fpinst; int fpexc; int fpregs; } ;
struct user_vfp_exc {int fpinst2; int fpinst; int fpexc; } ;
struct user_vfp {int fpscr; int fpregs; } ;
struct TYPE_2__ {struct vfp_hard_struct hard; } ;
struct thread_info {TYPE_1__ vfpstate; } ;


 int FPSCR_LENGTH_MASK ;
 int FPSCR_STRIDE_MASK ;
 struct thread_info* current_thread_info () ;
 int memcpy (int *,int *,int) ;
 int vfp_flush_hwstate (struct thread_info*) ;
 int vfp_sync_hwstate (struct thread_info*) ;

int vfp_preserve_user_clear_hwstate(struct user_vfp *ufp,
        struct user_vfp_exc *ufp_exc)
{
 struct thread_info *thread = current_thread_info();
 struct vfp_hard_struct *hwstate = &thread->vfpstate.hard;


 vfp_sync_hwstate(thread);





 memcpy(&ufp->fpregs, &hwstate->fpregs, sizeof(hwstate->fpregs));




 ufp->fpscr = hwstate->fpscr;




 ufp_exc->fpexc = hwstate->fpexc;
 ufp_exc->fpinst = hwstate->fpinst;
 ufp_exc->fpinst2 = hwstate->fpinst2;


 vfp_flush_hwstate(thread);





 hwstate->fpscr &= ~(FPSCR_LENGTH_MASK | FPSCR_STRIDE_MASK);
 return 0;
}
