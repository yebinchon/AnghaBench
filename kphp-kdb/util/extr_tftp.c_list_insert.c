
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ tftp_connection_t ;



__attribute__((used)) static void list_insert (tftp_connection_t *u, tftp_connection_t *V, tftp_connection_t *v) {
  u->next = V; V->prev = u;
  v->prev = V; V->next = v;
}
