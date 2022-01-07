
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ weights_vector_t ;



__attribute__((used)) static void insert_use (weights_vector_t *u, weights_vector_t *V, weights_vector_t *v) {
  u->next = V; V->prev = u;
  v->prev = V; V->next = v;
}
