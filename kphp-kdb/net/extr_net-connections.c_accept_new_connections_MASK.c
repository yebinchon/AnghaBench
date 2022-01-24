#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ magic; } ;
struct TYPE_13__ {int /*<<< orphan*/  s6_addr; } ;
struct TYPE_14__ {scalar_t__ sin6_family; TYPE_4__ sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct TYPE_11__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_12__ {scalar_t__ sin_family; int /*<<< orphan*/  sin_port; TYPE_2__ sin_addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  wakeup; } ;
struct TYPE_17__ {scalar_t__ state; } ;
union sockaddr_in46 {scalar_t__ basic_type; int fd; int flags; int listening; int window_clamp; TYPE_7__ out_p; TYPE_7__ in_u; TYPE_7__ out; TYPE_7__ in; scalar_t__ generation; scalar_t__ listening_generation; TYPE_6__* type; void* our_port; void* remote_port; struct conn_query* last_query; struct conn_query* first_query; TYPE_5__ a6; int /*<<< orphan*/  remote_ipv6; int /*<<< orphan*/  our_ipv6; void* remote_ip; void* our_ip; TYPE_3__ a4; int /*<<< orphan*/  status; int /*<<< orphan*/  extra; TYPE_1__ timer; int /*<<< orphan*/  out_buff; TYPE_9__ Out; int /*<<< orphan*/  in_buff; TYPE_9__ In; int /*<<< orphan*/ * ev; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connection {scalar_t__ basic_type; int fd; int flags; int listening; int window_clamp; TYPE_7__ out_p; TYPE_7__ in_u; TYPE_7__ out; TYPE_7__ in; scalar_t__ generation; scalar_t__ listening_generation; TYPE_6__* type; void* our_port; void* remote_port; struct conn_query* last_query; struct conn_query* first_query; TYPE_5__ a6; int /*<<< orphan*/  remote_ipv6; int /*<<< orphan*/  our_ipv6; void* remote_ip; void* our_ip; TYPE_3__ a4; int /*<<< orphan*/  status; int /*<<< orphan*/  extra; TYPE_1__ timer; int /*<<< orphan*/  out_buff; TYPE_9__ Out; int /*<<< orphan*/  in_buff; TYPE_9__ In; int /*<<< orphan*/ * ev; } ;
struct conn_query {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  self ;
typedef  int /*<<< orphan*/  peer ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  event_t ;
struct TYPE_15__ {int flags; scalar_t__ (* init_accepted ) (union sockaddr_in46*) ;int /*<<< orphan*/  title; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  BUFF_SIZE ; 
 int C_IPV6 ; 
 int C_NOQACK ; 
 int C_RAWMSG ; 
 int C_SPECIAL ; 
 int C_WANTRD ; 
 int C_WANTWR ; 
 union sockaddr_in46* Connections ; 
 scalar_t__ EAGAIN ; 
 int EVA_CONTINUE ; 
 int EVA_REMOVE ; 
 int EVT_READ ; 
 int EVT_SPEC ; 
 int EVT_WRITE ; 
 int /*<<< orphan*/ * Events ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int MAX_CONNECTIONS ; 
 int MAX_EVENTS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  TCP_WINDOW_CLAMP ; 
 int FUNC0 (int,struct sockaddr*,unsigned int*) ; 
 int /*<<< orphan*/  active_connections ; 
 scalar_t__ active_special_connections ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  conn_expect_query ; 
 scalar_t__ conn_generation ; 
 int /*<<< orphan*/  conn_timer_wakeup_gateway ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ct_inbound ; 
 scalar_t__ ct_listen ; 
 scalar_t__ ct_none ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union sockaddr_in46*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct sockaddr*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  inbound_connections_accepted ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,...) ; 
 int max_connection ; 
 scalar_t__ max_special_connections ; 
 int maxconn ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (union sockaddr_in46*,int /*<<< orphan*/ ,int) ; 
 void* FUNC18 (int /*<<< orphan*/ ) ; 
 void* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  server_read_write_gateway ; 
 scalar_t__ FUNC22 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC23 (union sockaddr_in46*) ; 
 int /*<<< orphan*/  FUNC24 (union sockaddr_in46*) ; 
 scalar_t__ FUNC25 (union sockaddr_in46*) ; 
 scalar_t__ tcp_maximize_buffers ; 
 int /*<<< orphan*/  FUNC26 (int,char*,int,int,...) ; 

int FUNC27 (struct connection *cc) {
  char buf[64], buf2[64];
  union sockaddr_in46 peer, self;
  unsigned peer_addrlen, self_addrlen;
  int cfd, acc = 0, flags;
  struct connection *c;
  event_t *ev;

  FUNC1 (cc->basic_type == ct_listen);
  do {
    peer_addrlen = sizeof (peer);
    self_addrlen = sizeof (self);
    FUNC17 (&peer, 0, sizeof (peer));
    FUNC17 (&self, 0, sizeof (self));
    cfd = FUNC0 (cc->fd, (struct sockaddr *) &peer, &peer_addrlen);
    if (cfd < 0) {
      if (!acc) {
	FUNC26 (errno == EAGAIN ? 1 : 0, "accept(%d) unexpectedly returns %d: %m\n", cc->fd, cfd);
      }
      break;
    }
    acc++;
    inbound_connections_accepted++;
    FUNC9 (cfd, (struct sockaddr *) &self, &self_addrlen);
    FUNC1 (cfd < MAX_EVENTS);
    ev = Events + cfd;
    FUNC1 (peer_addrlen == self_addrlen);
    if (cc->flags & C_IPV6) {
      FUNC1 (peer_addrlen == sizeof (struct sockaddr_in6));
      FUNC1 (peer.a6.sin6_family == AF_INET6);
      FUNC1 (self.a6.sin6_family == AF_INET6);
    } else {
      FUNC1 (peer_addrlen == sizeof (struct sockaddr_in));
      FUNC1 (peer.a4.sin_family == AF_INET);
      FUNC1 (self.a4.sin_family == AF_INET);
    }
    // memcpy (&ev->peer, &peer, sizeof(peer));
    if (peer.a4.sin_family == AF_INET) {
      FUNC26 (1, "accepted incoming connection of type %s at %s:%d -> %s:%d, fd=%d\n", cc->type->title, FUNC3 (peer.a4.sin_addr.s_addr, buf), FUNC19 (peer.a4.sin_port), FUNC3 (self.a4.sin_addr.s_addr, buf2), FUNC19 (self.a4.sin_port), cfd);
    } else {
      FUNC26 (1, "accepted incoming ipv6 connection of type %s at [%s]:%d -> [%s]:%d, fd=%d\n", cc->type->title, FUNC4 (peer.a6.sin6_addr.s6_addr, buf), FUNC19 (peer.a6.sin6_port), FUNC4 (self.a6.sin6_addr.s6_addr, buf2), FUNC19 (self.a6.sin6_port), cfd);
    }
    if ((flags = FUNC8 (cfd, F_GETFL, 0) < 0) || FUNC8 (cfd, F_SETFL, flags | O_NONBLOCK) < 0) {
      FUNC13 ("cannot set O_NONBLOCK on accepted socket %d: %m\n", cfd);
      FUNC2 (cfd);
      continue;
    }
    if (cfd >= MAX_CONNECTIONS || (cfd >= maxconn && maxconn)) {
      FUNC2 (cfd);
      continue;
    }
    if (cfd > max_connection) {
      max_connection = cfd;
    }
    flags = 1;
    FUNC22 (cfd, IPPROTO_TCP, TCP_NODELAY, &flags, sizeof (flags));
    if (tcp_maximize_buffers) {
      FUNC15 (cfd, 0);
      FUNC14 (cfd, 0);
    }

    c = Connections + cfd;
    FUNC17 (c, 0, sizeof (struct connection));
    c->fd = cfd;
    c->ev = ev;
    c->generation = ++conn_generation;
    c->flags = C_WANTRD;
    if ((cc->flags & C_RAWMSG) || (cc->type->flags & C_RAWMSG)) {
      c->flags |= C_RAWMSG;
      c->In.state = c->Out.state = 0;
      FUNC21 (&c->in, 0); 
      FUNC21 (&c->out, 0); 
      FUNC21 (&c->in_u, 0); 
      FUNC21 (&c->out_p, 0); 
    } else {
      c->in.magic = c->out.magic = 0;
      FUNC11 (&c->In, c->in_buff, BUFF_SIZE);
      FUNC11 (&c->Out, c->out_buff, BUFF_SIZE);
    }
    c->timer.wakeup = conn_timer_wakeup_gateway;
    c->type = cc->type;
    c->extra = cc->extra;
    c->basic_type = ct_inbound;
    c->status = conn_expect_query;
    if (peer.a4.sin_family == AF_INET) {
      c->our_ip = FUNC18 (self.a4.sin_addr.s_addr);
      c->our_port = FUNC19 (self.a4.sin_port);
      c->remote_ip = FUNC18 (peer.a4.sin_addr.s_addr);
      c->remote_port = FUNC19 (peer.a4.sin_port);
    } else if (FUNC12 (peer.a6.sin6_addr.s6_addr)) {
      FUNC1 (FUNC12 (self.a6.sin6_addr.s6_addr));
      c->our_ip = FUNC18 (FUNC7 (self.a6.sin6_addr.s6_addr));
      c->our_port = FUNC19 (self.a6.sin6_port);
      c->remote_ip = FUNC18 (FUNC7 (peer.a6.sin6_addr.s6_addr));
      c->remote_port = FUNC19 (peer.a6.sin6_port);
    } else {
      c->our_port = FUNC19 (self.a6.sin6_port);
      c->remote_port = FUNC19 (peer.a6.sin6_port);
      FUNC16 (c->our_ipv6, self.a6.sin6_addr.s6_addr, 16);
      FUNC16 (c->remote_ipv6, peer.a6.sin6_addr.s6_addr, 16);
      c->flags |= C_IPV6;
    }
    c->first_query = c->last_query = (struct conn_query *) c;
    FUNC26 (2, "accepted incoming connection of type %s at %s:%d -> %s:%d, fd=%d\n", c->type->title, FUNC24 (c), c->remote_port, FUNC23 (c), c->our_port, cfd);
    if (c->type->init_accepted (c) >= 0) {
      FUNC6 (cfd, 0, server_read_write_gateway, c);
      FUNC5 (cfd, (c->flags & C_WANTRD ? EVT_READ : 0) | (c->flags & C_WANTWR ? EVT_WRITE : 0) | EVT_SPEC);
      active_connections++;
      c->listening = cc->fd;
      c->listening_generation = cc->generation;
      if (cc->flags & C_SPECIAL) {
	c->flags |= C_SPECIAL;
	if (active_special_connections >= max_special_connections) {
	  FUNC13 ("ERROR: forced to accept connection when special connections limit was reached (%d of %d)\n", active_special_connections, max_special_connections);
	}
	if (++active_special_connections >= max_special_connections) {
	  return EVA_REMOVE;
	}
      }
      if ((cc->flags & C_NOQACK)) {
	c->flags |= C_NOQACK;
	// disable_qack (c->fd);
      }
      c->window_clamp = cc->window_clamp;
      if (c->window_clamp) {
	if (FUNC22 (cfd, IPPROTO_TCP, TCP_WINDOW_CLAMP, &c->window_clamp, 4) < 0) {
	  FUNC26 (0, "error while setting window size for socket %d to %d: %m\n", cfd, c->window_clamp);
	} else {
	  int t1 = -1, t2 = -1;
	  socklen_t s1 = 4, s2 = 4;
	  FUNC10 (cfd, IPPROTO_TCP, TCP_WINDOW_CLAMP, &t1, &s1);
	  FUNC10 (cfd, SOL_SOCKET, SO_RCVBUF, &t2, &s2);
	  FUNC26 (2, "window clamp for socket %d is %d, receive buffer is %d\n", cfd, t1, t2);
	}
      }
    } else {
      if (c->flags & C_RAWMSG) {
	FUNC20 (&c->in);
	FUNC20 (&c->out);
	FUNC20 (&c->in_u);
	FUNC20 (&c->out_p);
      }
      c->basic_type = ct_none;
      FUNC2 (cfd);
    }
  } while (1);
  return EVA_CONTINUE;
}