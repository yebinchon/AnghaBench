
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thread_info {unsigned int cpu; } ;
struct notifier_block {int dummy; } ;


 int FPEXC ;
 int FPEXC_EN ;
 int NOTIFY_DONE ;




 int fmrx (int ) ;
 int fmxr (int ,int) ;
 int * vfp_current_hw_state ;
 int vfp_save_state (int ,int) ;
 int vfp_thread_copy (struct thread_info*) ;
 int vfp_thread_exit (struct thread_info*) ;
 int vfp_thread_flush (struct thread_info*) ;

__attribute__((used)) static int vfp_notifier(struct notifier_block *self, unsigned long cmd, void *v)
{
 struct thread_info *thread = v;
 u32 fpexc;




 switch (cmd) {
 case 128:
  fpexc = fmrx(FPEXC);
  fmxr(FPEXC, fpexc & ~FPEXC_EN);
  break;

 case 129:
  vfp_thread_flush(thread);
  break;

 case 130:
  vfp_thread_exit(thread);
  break;

 case 131:
  vfp_thread_copy(thread);
  break;
 }

 return NOTIFY_DONE;
}
