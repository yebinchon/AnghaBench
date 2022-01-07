
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {double wakeup_time; } ;
struct conn_query {TYPE_3__ timer; struct conn_query* next; } ;
struct TYPE_4__ {struct conn_query* first_q; } ;
typedef TYPE_1__ queue ;


 int insert_event_timer (TYPE_3__*) ;
 double precise_now ;

int process_user_query_queue (queue *q) {
  struct conn_query *Q;
  double wtime = precise_now;

  for (Q = q->first_q; Q != (struct conn_query *)q; Q = Q->next) {
    if (Q->timer.wakeup_time > wtime || Q->timer.wakeup_time == 0) {
      Q->timer.wakeup_time = wtime;
      insert_event_timer (&Q->timer);
    }
  }

  return 0;
}
