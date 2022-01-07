
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {scalar_t__ closid; int rmid; } ;
struct TYPE_6__ {int func; } ;
struct task_move_callback {TYPE_3__ work; struct rdtgroup* rdtgrp; } ;
struct TYPE_5__ {int rmid; TYPE_1__* parent; } ;
struct rdtgroup {scalar_t__ type; scalar_t__ closid; TYPE_2__ mon; int waitcount; } ;
struct TYPE_4__ {scalar_t__ closid; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ RDTCTRL_GROUP ;
 scalar_t__ RDTMON_GROUP ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int kfree (struct task_move_callback*) ;
 struct task_move_callback* kzalloc (int,int ) ;
 int move_myself ;
 int rdt_last_cmd_puts (char*) ;
 int task_work_add (struct task_struct*,TYPE_3__*,int) ;

__attribute__((used)) static int __rdtgroup_move_task(struct task_struct *tsk,
    struct rdtgroup *rdtgrp)
{
 struct task_move_callback *callback;
 int ret;

 callback = kzalloc(sizeof(*callback), GFP_KERNEL);
 if (!callback)
  return -ENOMEM;
 callback->work.func = move_myself;
 callback->rdtgrp = rdtgrp;





 atomic_inc(&rdtgrp->waitcount);
 ret = task_work_add(tsk, &callback->work, 1);
 if (ret) {





  atomic_dec(&rdtgrp->waitcount);
  kfree(callback);
  rdt_last_cmd_puts("Task exited\n");
 } else {





  if (rdtgrp->type == RDTCTRL_GROUP) {
   tsk->closid = rdtgrp->closid;
   tsk->rmid = rdtgrp->mon.rmid;
  } else if (rdtgrp->type == RDTMON_GROUP) {
   if (rdtgrp->mon.parent->closid == tsk->closid) {
    tsk->rmid = rdtgrp->mon.rmid;
   } else {
    rdt_last_cmd_puts("Can't move task to different control group\n");
    ret = -EINVAL;
   }
  }
 }
 return ret;
}
