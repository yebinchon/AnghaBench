
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {struct connection* next; } ;
struct conn_target {struct connection* first_conn; } ;
struct TYPE_2__ {int (* flush_query ) (struct connection*) ;} ;


 TYPE_1__* MCC_FUNC (struct connection*) ;
 int stub1 (struct connection*) ;

void flush_conn (struct conn_target *S) {
  struct connection *c;
  if (!S) {
    return;
  }
  for (c = S->first_conn; c != (struct connection *)S; c = c->next) {
    MCC_FUNC (c)->flush_query (c);
  }
}
