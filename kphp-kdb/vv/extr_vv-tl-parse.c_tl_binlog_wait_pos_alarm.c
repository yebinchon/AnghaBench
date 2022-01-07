
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_timer {int dummy; } ;
struct binlog_wait_query {int (* on_alarm ) (struct binlog_wait_query*) ;} ;


 int stub1 (struct binlog_wait_query*) ;
 int zfree (struct binlog_wait_query*,int) ;

int tl_binlog_wait_pos_alarm (struct event_timer *ev) {

  struct binlog_wait_query *Q = (void *)ev;


  Q->on_alarm (Q);
  zfree (Q, sizeof (*Q));
  return 0;
}
