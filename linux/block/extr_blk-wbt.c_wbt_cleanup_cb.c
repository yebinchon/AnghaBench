
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbt_wait_data {int wb_acct; int rwb; } ;
struct rq_wait {int dummy; } ;


 int wbt_rqw_done (int ,struct rq_wait*,int ) ;

__attribute__((used)) static void wbt_cleanup_cb(struct rq_wait *rqw, void *private_data)
{
 struct wbt_wait_data *data = private_data;
 wbt_rqw_done(data->rwb, rqw, data->wb_acct);
}
