
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int state; int error; scalar_t__ wra; int Out; int In; } ;
struct TYPE_3__ {int epoll_ready; int ready; int state; scalar_t__ data; } ;
typedef TYPE_1__ event_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLRDHUP ;
 int EVA_DESTROY ;
 int EVT_READ ;
 int EVT_SPEC ;
 int EVT_WRITE ;
 int active_connections ;
 int assert (struct connection*) ;
 int fprintf (int ,char*,int,...) ;
 int free_connection_buffers (struct connection*) ;
 int free_unused_buffers (int *) ;
 scalar_t__ get_ready_bytes (int *) ;
 int memset (struct connection*,int ,int) ;
 int server_reader (struct connection*) ;
 int server_writer (struct connection*) ;
 int stderr ;
 scalar_t__ verbosity ;

int server_read_write (int fd, void *data, event_t *ev) {
  struct connection *c = (struct connection *) data;
  int res;
  assert (c);

  if (ev->epoll_ready & (EPOLLHUP | EPOLLERR | EPOLLRDHUP)) {
    if (verbosity > 0) {
      fprintf (stderr, "socket %d: disconnected, cleaning\n", fd);
    }
    free_connection_buffers (c);
    memset (c, 0, sizeof(struct connection));
    ev->data = 0;
    active_connections--;

    return EVA_DESTROY;
  }

  res = server_writer(c);
  if (res) return res;

  do {
    res = server_reader(c);
    if (verbosity) {
      fprintf (stderr, "server_reader=%d, ready=%02x, state=%02x\n", res, ev->ready, ev->state);
    }
    if (res > 0 || c->wra) break;
    if (get_ready_bytes(&c->Out)) {
      c->state = 1;
    }
    res = server_writer(c);
  } while (!res && (ev->ready & EVT_READ) && c->state != -3);

  free_unused_buffers(&c->In);
  free_unused_buffers(&c->Out);

  if (c->error == -3) {
    if (verbosity > 0) {
      fprintf (stderr, "socket %d: closing and cleaning\n", fd);
    }
    free_connection_buffers (c);
    memset (c, 0, sizeof(struct connection));
    ev->data = 0;
    active_connections--;

    return EVA_DESTROY;
  }

  return c->state == 1 && !c->wra ? EVT_WRITE | EVT_SPEC : EVT_READ | EVT_SPEC;
}
