
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int Out; int In; int * Tmp; TYPE_1__* gather; } ;
struct TYPE_2__ {struct connection* c; } ;


 int free_all_buffers (int *) ;
 int free_gather (TYPE_1__*) ;

void free_connection_buffers (struct connection *c) {
  if (c->gather && c->gather->c == c) {
    free_gather (c->gather);
  }
  c->gather = 0;
  if (c->Tmp) {
    free_all_buffers (c->Tmp);
    c->Tmp = 0;
  }
  free_all_buffers (&c->In);
  free_all_buffers (&c->Out);
}
