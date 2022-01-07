
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct conn_query* first_pq; } ;
typedef TYPE_1__ user_t ;
struct TYPE_6__ {double wakeup_time; } ;
struct conn_query {TYPE_3__ timer; struct conn_query* next; } ;


 int CLOCK_MONOTONIC ;
 struct conn_query* USER_PCONN (TYPE_1__*) ;
 double get_utime (int ) ;
 int insert_event_timer (TYPE_3__*) ;

int process_user_persistent_query_queue2 (user_t *U) {
  struct conn_query *Q;
  double wtime = get_utime (CLOCK_MONOTONIC) + 0.1;

  for (Q = U->first_pq; Q != USER_PCONN (U); Q = Q->next) {
    if (Q->timer.wakeup_time > wtime || Q->timer.wakeup_time == 0) {
      Q->timer.wakeup_time = wtime;
      insert_event_timer (&Q->timer);
    }
  }

  return 0;
}
