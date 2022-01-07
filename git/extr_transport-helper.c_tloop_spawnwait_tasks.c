
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bidirectional_transfer_state {int ptg; int gtp; } ;
typedef int pthread_t ;


 int _ (char*) ;
 int die (int ,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 int strerror (int) ;
 int tloop_join (int ,char*) ;
 int udt_copy_task_routine ;

__attribute__((used)) static int tloop_spawnwait_tasks(struct bidirectional_transfer_state *s)
{
 pthread_t gtp_thread;
 pthread_t ptg_thread;
 int err;
 int ret = 0;
 err = pthread_create(&gtp_thread, ((void*)0), udt_copy_task_routine,
  &s->gtp);
 if (err)
  die(_("can't start thread for copying data: %s"), strerror(err));
 err = pthread_create(&ptg_thread, ((void*)0), udt_copy_task_routine,
  &s->ptg);
 if (err)
  die(_("can't start thread for copying data: %s"), strerror(err));

 ret |= tloop_join(gtp_thread, "Git to program copy");
 ret |= tloop_join(ptg_thread, "Program to git copy");
 return ret;
}
