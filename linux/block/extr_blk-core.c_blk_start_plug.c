
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct blk_plug* plug; } ;
struct blk_plug {int multiple_queues; scalar_t__ rq_count; int cb_list; int mq_list; } ;


 int INIT_LIST_HEAD (int *) ;
 struct task_struct* current ;

void blk_start_plug(struct blk_plug *plug)
{
 struct task_struct *tsk = current;




 if (tsk->plug)
  return;

 INIT_LIST_HEAD(&plug->mq_list);
 INIT_LIST_HEAD(&plug->cb_list);
 plug->rq_count = 0;
 plug->multiple_queues = 0;





 tsk->plug = plug;
}
