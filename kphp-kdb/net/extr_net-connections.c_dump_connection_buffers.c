
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int fd; int * Tmp; int Out; int In; } ;


 int dump_buffers (int *) ;
 int fprintf (int ,char*,int,...) ;
 int stderr ;

void dump_connection_buffers (struct connection *c) {
  fprintf (stderr, "Dumping buffers of connection %d\nINPUT buffers of %d:\n", c->fd, c->fd);
  dump_buffers (&c->In);
  fprintf (stderr, "OUTPUT buffers of %d:\n", c->fd);
  dump_buffers (&c->Out);
  if (c->Tmp) {
    fprintf (stderr, "TEMP buffers of %d:\n", c->fd);
    dump_buffers (c->Tmp);
  }
  fprintf (stderr, "--- END (dumping buffers of connection %d) ---\n", c->fd);
}
