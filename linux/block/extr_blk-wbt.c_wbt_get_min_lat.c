
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;
struct TYPE_2__ {int min_lat_nsec; } ;


 TYPE_1__* RQWB (struct rq_qos*) ;
 struct rq_qos* wbt_rq_qos (struct request_queue*) ;

u64 wbt_get_min_lat(struct request_queue *q)
{
 struct rq_qos *rqos = wbt_rq_qos(q);
 if (!rqos)
  return 0;
 return RQWB(rqos)->min_lat_nsec;
}
