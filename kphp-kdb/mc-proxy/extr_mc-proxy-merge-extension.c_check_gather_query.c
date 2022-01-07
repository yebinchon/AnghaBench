
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {scalar_t__ generation; struct conn_query* first_query; } ;
struct conn_query {scalar_t__ req_generation; struct conn_query* next; scalar_t__ extra; struct connection* requester; } ;


 int assert (struct conn_query*) ;

int check_gather_query (struct connection *c, struct conn_query *qu) {
  struct connection *C = qu->requester;
  struct conn_query *Q = C->first_query;
  if (C->generation != qu->req_generation) {
    return 0;
  }
  while (Q != (struct conn_query*)C) {
    assert (Q);
    if (Q == (struct conn_query *)(qu->extra)) {
      return 1;
    }
    Q = Q->next;
  }
  return 0;
}
