
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int fd; int state; struct connection* prev; struct connection* next; int out_buff; int Out; int in_buff; int In; struct cluster_server* serv; int * ev; } ;
struct TYPE_2__ {int s_addr; } ;
struct cluster_server {int port; int id; TYPE_1__ addr; int conn; struct connection* c; } ;
typedef int event_t ;


 int BUFF_SIZE ;
 int C_INCONN ;
 struct connection* Connections ;
 int EVT_SPEC ;
 int EVT_WRITE ;
 int * Events ;
 int MAX_EVENTS ;
 int assert (int) ;
 int client_socket (int ,int,int ) ;
 int client_worker ;
 int epoll_insert (int,int) ;
 int epoll_sethandler (int,int ,int ,struct connection*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* inet_ntoa (TYPE_1__) ;
 int init_builtin_buffer (int *,int ,int ) ;
 int memset (struct connection*,int ,int) ;
 int outbound_connections ;
 int stderr ;
 int verbosity ;

struct connection *create_client (struct cluster_server *S) {
  int cfd = client_socket (S->addr.s_addr, S->port, 0);
  struct connection *c, *h;
  event_t *ev;

  if (cfd < 0) {
    fprintf (stderr, "error connecting to %s:%d: %m", inet_ntoa(S->addr), S->port);
    exit(1);
  }

  assert (cfd < MAX_EVENTS);

  ev = Events + cfd;


  c = Connections + cfd;
  memset (c, 0, sizeof (struct connection));
  c->fd = cfd;
  c->ev = ev;
  c->serv = S;

  init_builtin_buffer (&c->In, c->in_buff, BUFF_SIZE);
  init_builtin_buffer (&c->Out, c->out_buff, BUFF_SIZE);

  epoll_sethandler (cfd, 0, client_worker, c);
  epoll_insert (cfd, EVT_WRITE | EVT_SPEC);
  if (verbosity > 1) {
    fprintf (stderr, "after insert()\n");
  }

  if (!S->c) {
    c->next = c->prev = S->c = c;
  } else {
    h = S->c;
    c->next = h;
    c->prev = h->prev;
    h->prev->next = c;
    h->prev = c;
  }

  c->state = C_INCONN;
  S->conn++;
  outbound_connections++;

  if (verbosity > 0) {
    fprintf (stderr, "outbound connection #%d: handle %d to %s:%d\n", S->id, c->fd, inet_ntoa(S->addr), S->port);
  }

  return c;
}
