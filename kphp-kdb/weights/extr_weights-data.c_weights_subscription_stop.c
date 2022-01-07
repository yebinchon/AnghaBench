
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ conn_generation; struct connection* c; struct TYPE_4__* next; } ;
typedef TYPE_1__ weights_subscription_t ;
struct connection {scalar_t__ generation; } ;


 int subscription_free (TYPE_1__*) ;
 TYPE_1__ subscriptions ;

int weights_subscription_stop (struct connection *c) {
  weights_subscription_t *S;
  for (S = subscriptions.next; S != &subscriptions; S = S->next) {
    if (S->c == c && S->conn_generation == c->generation) {
      subscription_free (S);
      return 0;
    }
  }
  return -1;
}
