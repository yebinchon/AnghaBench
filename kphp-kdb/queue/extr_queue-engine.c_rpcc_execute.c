
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int fd; } ;


 int SKIP_ALL_BYTES ;
 int fprintf (int ,char*,int,int,int) ;
 int stderr ;
 scalar_t__ verbosity ;

int rpcc_execute (struct connection *c, int op, int len) {
  if (verbosity > 0) {
    fprintf (stderr, "rpcc_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);
  }

  return SKIP_ALL_BYTES;
}
