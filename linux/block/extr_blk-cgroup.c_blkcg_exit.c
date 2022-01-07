
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * throttle_queue; } ;


 int blk_put_queue (int *) ;

__attribute__((used)) static void blkcg_exit(struct task_struct *tsk)
{
 if (tsk->throttle_queue)
  blk_put_queue(tsk->throttle_queue);
 tsk->throttle_queue = ((void*)0);
}
