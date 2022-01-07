
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;
struct TYPE_3__ {int enable_state; int min_lat_nsec; } ;


 TYPE_1__* RQWB (struct rq_qos*) ;
 int WBT_STATE_ON_MANUAL ;
 int __wbt_update_limits (TYPE_1__*) ;
 struct rq_qos* wbt_rq_qos (struct request_queue*) ;

void wbt_set_min_lat(struct request_queue *q, u64 val)
{
 struct rq_qos *rqos = wbt_rq_qos(q);
 if (!rqos)
  return;
 RQWB(rqos)->min_lat_nsec = val;
 RQWB(rqos)->enable_state = WBT_STATE_ON_MANUAL;
 __wbt_update_limits(RQWB(rqos));
}
