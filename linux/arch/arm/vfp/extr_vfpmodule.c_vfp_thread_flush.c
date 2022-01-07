
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fpexc; int cpu; int fpscr; } ;
union vfp_state {TYPE_1__ hard; } ;
struct thread_info {union vfp_state vfpstate; } ;


 int FPEXC ;
 int FPEXC_EN ;
 int FPSCR_ROUND_NEAREST ;
 int NR_CPUS ;
 int fmrx (int ) ;
 int fmxr (int ,int) ;
 unsigned int get_cpu () ;
 int memset (union vfp_state*,int ,int) ;
 int put_cpu () ;
 union vfp_state** vfp_current_hw_state ;

__attribute__((used)) static void vfp_thread_flush(struct thread_info *thread)
{
 union vfp_state *vfp = &thread->vfpstate;
 unsigned int cpu;
 cpu = get_cpu();
 if (vfp_current_hw_state[cpu] == vfp)
  vfp_current_hw_state[cpu] = ((void*)0);
 fmxr(FPEXC, fmrx(FPEXC) & ~FPEXC_EN);
 put_cpu();

 memset(vfp, 0, sizeof(union vfp_state));

 vfp->hard.fpexc = FPEXC_EN;
 vfp->hard.fpscr = FPSCR_ROUND_NEAREST;



}
