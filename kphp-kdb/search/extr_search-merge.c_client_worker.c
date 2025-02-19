
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int state; int fd; int error; int Out; int In; struct cluster_server* serv; } ;
struct cluster_server {int port; scalar_t__ reconnect_time; scalar_t__ conn_retries; int rconn; int addr; } ;
struct TYPE_3__ {int epoll_ready; int ready; int state; scalar_t__ data; } ;
typedef TYPE_1__ event_t ;


 int C_INCONN ;
 int C_NORD ;
 int C_NORW ;
 int C_NOWR ;
 int C_WANTRD ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLRDHUP ;
 int EVT_READ ;
 int EVT_SPEC ;
 int EVT_WRITE ;
 int active_outbound_connections ;
 int assert (struct connection*) ;
 int clear_client (struct connection*) ;
 int client_reader (struct connection*) ;
 int fprintf (int ,char*,int,...) ;
 int free_unused_buffers (int *) ;
 scalar_t__ get_ready_bytes (int *) ;
 char* inet_ntoa (int ) ;
 int server_writer (struct connection*) ;
 int stderr ;
 int verbosity ;

int client_worker (int fd, void *data, event_t *ev) {
  struct connection *c = (struct connection *) ev->data;
  struct cluster_server *S;
  int res;
  assert (c);

  if (ev->epoll_ready & (EPOLLHUP | EPOLLERR | EPOLLRDHUP)) {
    if (verbosity > 0) {
      fprintf (stderr, "outbound socket %d: disconnected, cleaning\n", fd);
    }


    return clear_client (c);
  }

  if (c->state == C_INCONN) {
    if (ev->ready & EVT_WRITE) {
      if (verbosity > 0) {
  fprintf (stderr, "socket #%d to %s:%d becomes active\n", c->fd, inet_ntoa(c->serv->addr), c->serv->port);
      }
      c->state = C_WANTRD;
      S = c->serv;
      S->rconn++;
      S->conn_retries = 0;
      S->reconnect_time = 0;
      active_outbound_connections++;
      return EVT_READ | EVT_SPEC;
    }
    fprintf (stderr, "socket #%d: unknown event before connecting (?)\n", c->fd);
    return EVT_SPEC;
  }

  c->state &= ~C_NORW;
  if ((ev->state & EVT_READ) && !(ev->ready & EVT_READ)) { c->state |= C_NORD; }
  if ((ev->state & EVT_WRITE) && !(ev->ready & EVT_WRITE)) { c->state |= C_NOWR; }

  if (verbosity > 0) {
    fprintf (stderr, "outbound socket #%d: woke up, state=%d\n", c->fd, c->state);
  }

  server_writer (c);


  res = 0;
  while (c->state > 0 && (res == 1 || ((c->state & C_WANTRD) && !(c->state & C_NORD)))) {

    res = client_reader (c);
    if (verbosity > 1) {
      fprintf (stderr, "client_reader(%d) returned %d\n", c->fd, res);
    }
    if (res < 0) {
      c->error |= 8;
    }
    free_unused_buffers (&c->In);
    if (res < 0 || res > 1) {
      break;
    }
  }

  if (c->error) {
    if (verbosity > 0) {
      fprintf (stderr, "client socket #%d: error, closing socket.\n", c->fd);
    }
    return clear_client (c);
  }

  free_unused_buffers (&c->In);
  free_unused_buffers (&c->Out);

  return get_ready_bytes (&c->Out) > 0 ? EVT_SPEC | EVT_READ | EVT_WRITE : EVT_SPEC | EVT_READ;

}
