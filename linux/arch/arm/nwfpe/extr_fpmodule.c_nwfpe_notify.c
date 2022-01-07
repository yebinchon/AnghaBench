
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int fpstate; } ;
struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 unsigned long THREAD_NOTIFY_FLUSH ;
 int nwfpe_init_fpa (int *) ;

__attribute__((used)) static int nwfpe_notify(struct notifier_block *self, unsigned long cmd, void *v)
{
 struct thread_info *thread = v;

 if (cmd == THREAD_NOTIFY_FLUSH)
  nwfpe_init_fpa(&thread->fpstate);

 return NOTIFY_DONE;
}
