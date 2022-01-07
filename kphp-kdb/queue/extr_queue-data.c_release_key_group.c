
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {double wakeup_time; } ;
struct conn_query {TYPE_4__ timer; } ;
struct TYPE_6__ {int n; TYPE_1__** k; } ;
typedef TYPE_2__ qkey_group ;
struct TYPE_5__ {struct conn_query* conn; } ;


 int insert_event_timer (TYPE_4__*) ;
 double precise_now ;

void release_key_group (qkey_group *k) {
  int i;
  for (i = 0; i < k->n; i++) {
    if (k->k[i] != ((void*)0)) {
      struct conn_query *Q = k->k[i]->conn;
      if (Q != ((void*)0)) {
        double wtime = precise_now;

        if (Q->timer.wakeup_time > wtime || Q->timer.wakeup_time == 0) {
          Q->timer.wakeup_time = wtime;
          insert_event_timer (&Q->timer);
        }
      }
    }
  }
}
