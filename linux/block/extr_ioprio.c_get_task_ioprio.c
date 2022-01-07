
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* io_context; } ;
struct TYPE_2__ {int ioprio; } ;


 int IOPRIO_CLASS_NONE ;
 int IOPRIO_NORM ;
 int IOPRIO_PRIO_VALUE (int ,int ) ;
 int security_task_getioprio (struct task_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static int get_task_ioprio(struct task_struct *p)
{
 int ret;

 ret = security_task_getioprio(p);
 if (ret)
  goto out;
 ret = IOPRIO_PRIO_VALUE(IOPRIO_CLASS_NONE, IOPRIO_NORM);
 task_lock(p);
 if (p->io_context)
  ret = p->io_context->ioprio;
 task_unlock(p);
out:
 return ret;
}
