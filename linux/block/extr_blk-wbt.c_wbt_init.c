
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct request_queue* q; int * ops; int id; } ;
struct TYPE_4__ {int default_depth; } ;
struct rq_wb {int wc; TYPE_2__ rqos; int min_lat_nsec; int cb; TYPE_1__ rq_depth; int enable_state; int win_nsec; int last_issue; int last_comp; int * rq_wait; } ;
struct request_queue {int queue_flags; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QUEUE_FLAG_WC ;
 int RQ_QOS_WBT ;
 int RWB_DEF_DEPTH ;
 int RWB_WINDOW_NSEC ;
 int WBT_NUM_RWQ ;
 int WBT_STATE_ON_DEFAULT ;
 int __wbt_update_limits (struct rq_wb*) ;
 int blk_stat_add_callback (struct request_queue*,int ) ;
 int blk_stat_alloc_callback (int ,int ,int,struct rq_wb*) ;
 int jiffies ;
 int kfree (struct rq_wb*) ;
 struct rq_wb* kzalloc (int,int ) ;
 int rq_qos_add (struct request_queue*,TYPE_2__*) ;
 int rq_wait_init (int *) ;
 int test_bit (int ,int *) ;
 int wb_timer_fn ;
 int wbt_data_dir ;
 int wbt_default_latency_nsec (struct request_queue*) ;
 int wbt_queue_depth_changed (TYPE_2__*) ;
 int wbt_rqos_ops ;
 int wbt_set_write_cache (struct request_queue*,int ) ;

int wbt_init(struct request_queue *q)
{
 struct rq_wb *rwb;
 int i;

 rwb = kzalloc(sizeof(*rwb), GFP_KERNEL);
 if (!rwb)
  return -ENOMEM;

 rwb->cb = blk_stat_alloc_callback(wb_timer_fn, wbt_data_dir, 2, rwb);
 if (!rwb->cb) {
  kfree(rwb);
  return -ENOMEM;
 }

 for (i = 0; i < WBT_NUM_RWQ; i++)
  rq_wait_init(&rwb->rq_wait[i]);

 rwb->rqos.id = RQ_QOS_WBT;
 rwb->rqos.ops = &wbt_rqos_ops;
 rwb->rqos.q = q;
 rwb->last_comp = rwb->last_issue = jiffies;
 rwb->win_nsec = RWB_WINDOW_NSEC;
 rwb->enable_state = WBT_STATE_ON_DEFAULT;
 rwb->wc = 1;
 rwb->rq_depth.default_depth = RWB_DEF_DEPTH;
 __wbt_update_limits(rwb);




 rq_qos_add(q, &rwb->rqos);
 blk_stat_add_callback(q, rwb->cb);

 rwb->min_lat_nsec = wbt_default_latency_nsec(q);

 wbt_queue_depth_changed(&rwb->rqos);
 wbt_set_write_cache(q, test_bit(QUEUE_FLAG_WC, &q->queue_flags));

 return 0;
}
