
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbt_wait_data {int wb_acct; unsigned long rw; struct rq_wb* rwb; } ;
struct rq_wb {int dummy; } ;
struct rq_wait {int dummy; } ;
typedef enum wbt_flags { ____Placeholder_wbt_flags } wbt_flags ;


 struct rq_wait* get_rq_wait (struct rq_wb*,int) ;
 int rq_qos_wait (struct rq_wait*,struct wbt_wait_data*,int ,int ) ;
 int wbt_cleanup_cb ;
 int wbt_inflight_cb ;

__attribute__((used)) static void __wbt_wait(struct rq_wb *rwb, enum wbt_flags wb_acct,
         unsigned long rw)
{
 struct rq_wait *rqw = get_rq_wait(rwb, wb_acct);
 struct wbt_wait_data data = {
  .rwb = rwb,
  .wb_acct = wb_acct,
  .rw = rw,
 };

 rq_qos_wait(rqw, &data, wbt_inflight_cb, wbt_cleanup_cb);
}
