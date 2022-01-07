
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_qos {TYPE_1__* ops; void* debugfs_dir; struct request_queue* q; int id; } ;
struct request_queue {void* rqos_debugfs_dir; void* debugfs_dir; } ;
struct TYPE_2__ {int debugfs_attrs; } ;


 void* debugfs_create_dir (char const*,void*) ;
 int debugfs_create_files (void*,struct rq_qos*,int ) ;
 char* rq_qos_id_to_name (int ) ;

void blk_mq_debugfs_register_rqos(struct rq_qos *rqos)
{
 struct request_queue *q = rqos->q;
 const char *dir_name = rq_qos_id_to_name(rqos->id);

 if (rqos->debugfs_dir || !rqos->ops->debugfs_attrs)
  return;

 if (!q->rqos_debugfs_dir)
  q->rqos_debugfs_dir = debugfs_create_dir("rqos",
        q->debugfs_dir);

 rqos->debugfs_dir = debugfs_create_dir(dir_name,
            rqos->q->rqos_debugfs_dir);

 debugfs_create_files(rqos->debugfs_dir, rqos, rqos->ops->debugfs_attrs);
}
