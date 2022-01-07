
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rq_qos {int q; } ;
struct TYPE_4__ {int queue_depth; } ;
struct TYPE_5__ {TYPE_1__ rq_depth; } ;


 TYPE_2__* RQWB (struct rq_qos*) ;
 int __wbt_update_limits (TYPE_2__*) ;
 int blk_queue_depth (int ) ;

__attribute__((used)) static void wbt_queue_depth_changed(struct rq_qos *rqos)
{
 RQWB(rqos)->rq_depth.queue_depth = blk_queue_depth(rqos->q);
 __wbt_update_limits(RQWB(rqos));
}
