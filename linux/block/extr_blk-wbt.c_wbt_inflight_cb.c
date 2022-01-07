
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbt_wait_data {int rw; int rwb; } ;
struct rq_wait {int dummy; } ;


 int get_limit (int ,int ) ;
 int rq_wait_inc_below (struct rq_wait*,int ) ;

__attribute__((used)) static bool wbt_inflight_cb(struct rq_wait *rqw, void *private_data)
{
 struct wbt_wait_data *data = private_data;
 return rq_wait_inc_below(rqw, get_limit(data->rwb, data->rw));
}
