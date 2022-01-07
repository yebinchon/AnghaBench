
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; int In; } ;


 int free_all_buffers (int *) ;
 int free_tmp_buffers (struct connection*) ;

int free_connection_buffers (struct connection *c) {
  free_tmp_buffers (c);
  free_all_buffers (&c->In);
  free_all_buffers (&c->Out);
  return 0;
}
