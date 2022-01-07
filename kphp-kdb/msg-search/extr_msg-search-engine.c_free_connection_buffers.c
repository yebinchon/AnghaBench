
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; int In; scalar_t__ Tmp; } ;


 int free_all_buffers (int *) ;
 int free_buffer (scalar_t__) ;

void free_connection_buffers (struct connection *c) {
  if (c->Tmp) {
    free_buffer (c->Tmp);
    c->Tmp = 0;
  }
  free_all_buffers (&c->In);
  free_all_buffers (&c->Out);
}
