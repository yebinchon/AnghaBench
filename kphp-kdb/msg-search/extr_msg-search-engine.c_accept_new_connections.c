
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in {int fd; int out_buff; int Out; int in_buff; int In; TYPE_2__* ev; } ;
struct sockaddr {int dummy; } ;
struct connection {int fd; int out_buff; int Out; int in_buff; int In; TYPE_2__* ev; } ;
typedef int peer ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_8__ {int sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_7__ {TYPE_3__ peer; } ;
typedef TYPE_2__ event_t ;


 int BUFF_SIZE ;
 struct sockaddr_in* Connections ;
 int EVA_CONTINUE ;
 int EVT_READ ;
 int EVT_SPEC ;
 TYPE_2__* Events ;
 int MAX_CONNECTIONS ;
 int MAX_EVENTS ;
 int accept (int,struct sockaddr*,unsigned int*) ;
 int active_connections ;
 int assert (int) ;
 int close (int) ;
 char* conv_addr (int ,char*) ;
 int epoll_insert (int,int) ;
 int epoll_sethandler (int,int ,int ,struct sockaddr_in*) ;
 int fprintf (int ,char*,...) ;
 int init_builtin_buffer (int *,int ,int ) ;
 int memcpy (TYPE_3__*,struct sockaddr_in*,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int server_read_write ;
 int stderr ;
 scalar_t__ verbosity ;

int accept_new_connections (int fd, void *data, event_t *ev) {
  char buf[32];
  struct sockaddr_in peer;
  unsigned addrlen;
  int cfd, acc = 0;
  struct connection *c;
  do {
    addrlen = sizeof(peer);
    memset (&peer, 0, sizeof(peer));
    cfd = accept (fd, (struct sockaddr *) &peer, &addrlen);
    if (cfd < 0) {
      if (!acc && verbosity > 0) {
 fprintf (stderr, "accept(%d) unexpectedly returns %d\n", fd, cfd);
      }
      break;
    } else acc++;
    assert (cfd < MAX_EVENTS);
    ev = Events + cfd;
    memcpy (&ev->peer, &peer, sizeof(peer));
    if (verbosity > 0) {
      fprintf (stderr, "accepted incoming connection at %s:%d, fd=%d\n", conv_addr(ev->peer.sin_addr.s_addr, buf), ev->peer.sin_port, cfd);
    }
    if (cfd >= MAX_CONNECTIONS) {
      close (cfd);
      continue;
    }
    c = Connections + cfd;
    memset (c, 0, sizeof (struct connection));
    c->fd = cfd;
    c->ev = ev;
    init_builtin_buffer (&c->In, c->in_buff, BUFF_SIZE);
    init_builtin_buffer (&c->Out, c->out_buff, BUFF_SIZE);
    epoll_sethandler (cfd, 0, server_read_write, c);
    epoll_insert (cfd, EVT_READ | EVT_SPEC);
    active_connections++;
  } while (1);
  return EVA_CONTINUE;
}
