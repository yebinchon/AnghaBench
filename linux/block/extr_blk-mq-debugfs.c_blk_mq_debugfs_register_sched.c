
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int sched_debugfs_dir; int debugfs_dir; TYPE_1__* elevator; } ;
struct elevator_type {int queue_debugfs_attrs; } ;
struct TYPE_2__ {struct elevator_type* type; } ;


 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_files (int ,struct request_queue*,int ) ;

void blk_mq_debugfs_register_sched(struct request_queue *q)
{
 struct elevator_type *e = q->elevator->type;





 if (!q->debugfs_dir)
  return;

 if (!e->queue_debugfs_attrs)
  return;

 q->sched_debugfs_dir = debugfs_create_dir("sched", q->debugfs_dir);

 debugfs_create_files(q->sched_debugfs_dir, q, e->queue_debugfs_attrs);
}
