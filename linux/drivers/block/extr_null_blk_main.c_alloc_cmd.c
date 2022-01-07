
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_queue {int wait; } ;
struct nullb_cmd {int dummy; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 struct nullb_cmd* __alloc_cmd (struct nullb_queue*) ;
 int finish_wait (int *,int *) ;
 int io_schedule () ;
 int prepare_to_wait (int *,int *,int ) ;
 int wait ;

__attribute__((used)) static struct nullb_cmd *alloc_cmd(struct nullb_queue *nq, int can_wait)
{
 struct nullb_cmd *cmd;
 DEFINE_WAIT(wait);

 cmd = __alloc_cmd(nq);
 if (cmd || !can_wait)
  return cmd;

 do {
  prepare_to_wait(&nq->wait, &wait, TASK_UNINTERRUPTIBLE);
  cmd = __alloc_cmd(nq);
  if (cmd)
   break;

  io_schedule();
 } while (1);

 finish_wait(&nq->wait, &wait);
 return cmd;
}
