
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* prev; } ;
typedef TYPE_1__ weights_subscription_t ;



__attribute__((used)) static void subscription_delete (weights_subscription_t *S) {
  weights_subscription_t *u = S->prev, *v = S->next;
  u->next = v;
  v->prev = u;
  S->prev = S->next = ((void*)0);
}
