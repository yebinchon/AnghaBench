
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int fd; int pending_queries; int status; int flags; } ;


 int C_INTIMEOUT ;
 int assert (int) ;
 scalar_t__ conn_wait_aio ;
 int fprintf (int ,char*,int,int,int) ;
 int photo_engine_wakeup (struct connection*) ;
 int stderr ;
 int verbosity ;

int photo_engine_alarm (struct connection *c) {
  if (verbosity > 1) {
    fprintf (stderr, "photo_engine connection %d timeout alarm, %d queries pending, status=%d\n", c->fd, c->pending_queries, c->status);
  }
  assert (c->status == conn_wait_aio);
  c->flags |= C_INTIMEOUT;
  return photo_engine_wakeup (c);
}
