
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thread_info {int vfpstate; } ;


 int FPEXC ;
 int FPEXC_EN ;
 int fmrx (int ) ;
 int fmxr (int ,int) ;
 unsigned int get_cpu () ;
 int put_cpu () ;
 int vfp_save_state (int *,int) ;
 scalar_t__ vfp_state_in_hw (unsigned int,struct thread_info*) ;

void vfp_sync_hwstate(struct thread_info *thread)
{
 unsigned int cpu = get_cpu();

 if (vfp_state_in_hw(cpu, thread)) {
  u32 fpexc = fmrx(FPEXC);




  fmxr(FPEXC, fpexc | FPEXC_EN);
  vfp_save_state(&thread->vfpstate, fpexc | FPEXC_EN);
  fmxr(FPEXC, fpexc);
 }

 put_cpu();
}
