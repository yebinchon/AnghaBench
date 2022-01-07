
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int (* run ) (struct connection*) ;struct connection* type; int flags; } ;
struct TYPE_3__ {int ready; int state; } ;
typedef TYPE_1__ event_t ;


 int C_NORD ;
 int C_NORW ;
 int C_NOWR ;
 int EVT_FROM_EPOLL ;
 int EVT_READ ;
 int EVT_WRITE ;
 int assert (struct connection*) ;
 int stub1 (struct connection*) ;

int server_read_write_gateway (int fd, void *data, event_t *ev) {
  struct connection *c = (struct connection *) data;
  assert (c);
  assert (c->type);

  if (ev->ready & EVT_FROM_EPOLL) {

    ev->ready &= ~EVT_FROM_EPOLL;
    c->flags &= ~C_NORW;
    if ((ev->state & EVT_READ) && !(ev->ready & EVT_READ)) {
      c->flags |= C_NORD;
    }
    if ((ev->state & EVT_WRITE) && !(ev->ready & EVT_WRITE)) {
      c->flags |= C_NOWR;
    }
  }

  return c->type->run (c);
}
