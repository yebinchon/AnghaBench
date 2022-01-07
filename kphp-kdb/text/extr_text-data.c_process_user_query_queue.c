
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct conn_query* first_q; } ;
typedef TYPE_1__ user_t ;
struct conn_query {struct conn_query* next; } ;


 struct conn_query* USER_CONN (TYPE_1__*) ;
 int delete_conn_query (struct conn_query*) ;
 int pending_http_queries ;
 int zfree (struct conn_query*,int) ;

int process_user_query_queue (user_t *U) {
  struct conn_query *tmp, *tnext;

  for (tmp = U->first_q; tmp != USER_CONN (U); tmp = tnext) {
    tnext = tmp->next;

    pending_http_queries--;
    delete_conn_query (tmp);
    zfree (tmp, sizeof (*tmp));
  }

  return 0;
}
