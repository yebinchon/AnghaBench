#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ magic; } ;
struct TYPE_11__ {int /*<<< orphan*/  s6_addr; } ;
struct TYPE_10__ {scalar_t__ s_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  wakeup; } ;
struct TYPE_14__ {scalar_t__ state; } ;
struct sockaddr_in6 {int fd; int flags; int remote_port; struct sockaddr_in6* prev; struct sockaddr_in6* next; int /*<<< orphan*/  basic_type; TYPE_5__ out_p; TYPE_5__ in_u; TYPE_5__ out; TYPE_5__ in; TYPE_4__* type; int /*<<< orphan*/  remote_ipv6; void* our_port; int /*<<< orphan*/  our_ipv6; int /*<<< orphan*/  sin6_port; TYPE_3__ sin6_addr; void* remote_ip; int /*<<< orphan*/  sin_port; TYPE_2__ sin_addr; void* our_ip; struct conn_query* last_query; struct conn_query* first_query; int /*<<< orphan*/  status; int /*<<< orphan*/  extra; TYPE_1__ timer; int /*<<< orphan*/  out_buff; TYPE_7__ Out; int /*<<< orphan*/  in_buff; TYPE_7__ In; scalar_t__ generation; struct conn_target* target; int /*<<< orphan*/ * ev; } ;
struct sockaddr_in {int fd; int flags; int remote_port; struct sockaddr_in* prev; struct sockaddr_in* next; int /*<<< orphan*/  basic_type; TYPE_5__ out_p; TYPE_5__ in_u; TYPE_5__ out; TYPE_5__ in; TYPE_4__* type; int /*<<< orphan*/  remote_ipv6; void* our_port; int /*<<< orphan*/  our_ipv6; int /*<<< orphan*/  sin6_port; TYPE_3__ sin6_addr; void* remote_ip; int /*<<< orphan*/  sin_port; TYPE_2__ sin_addr; void* our_ip; struct conn_query* last_query; struct conn_query* first_query; int /*<<< orphan*/  status; int /*<<< orphan*/  extra; TYPE_1__ timer; int /*<<< orphan*/  out_buff; TYPE_7__ Out; int /*<<< orphan*/  in_buff; TYPE_7__ In; scalar_t__ generation; struct conn_target* target; int /*<<< orphan*/ * ev; } ;
struct sockaddr {int dummy; } ;
struct connection {int fd; int flags; int remote_port; struct connection* prev; struct connection* next; int /*<<< orphan*/  basic_type; TYPE_5__ out_p; TYPE_5__ in_u; TYPE_5__ out; TYPE_5__ in; TYPE_4__* type; int /*<<< orphan*/  remote_ipv6; void* our_port; int /*<<< orphan*/  our_ipv6; int /*<<< orphan*/  sin6_port; TYPE_3__ sin6_addr; void* remote_ip; int /*<<< orphan*/  sin_port; TYPE_2__ sin_addr; void* our_ip; struct conn_query* last_query; struct conn_query* first_query; int /*<<< orphan*/  status; int /*<<< orphan*/  extra; TYPE_1__ timer; int /*<<< orphan*/  out_buff; TYPE_7__ Out; int /*<<< orphan*/  in_buff; TYPE_7__ In; scalar_t__ generation; struct conn_target* target; int /*<<< orphan*/ * ev; } ;
struct TYPE_15__ {scalar_t__ s_addr; } ;
struct conn_target {scalar_t__ refcnt; int ready_outbound_connections; int min_connections; int max_connections; scalar_t__ next_reconnect; int outbound_connections; int port; TYPE_8__ target; int /*<<< orphan*/  target_ipv6; int /*<<< orphan*/  extra; TYPE_4__* type; int /*<<< orphan*/  active_outbound_connections; struct sockaddr_in6* first_conn; } ;
struct conn_query {int dummy; } ;
typedef  int /*<<< orphan*/  self ;
typedef  int /*<<< orphan*/  event_t ;
struct TYPE_12__ {int (* check_ready ) (struct sockaddr_in6*) ;int flags; scalar_t__ (* init_outbound ) (struct sockaddr_in6*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BUFF_SIZE ; 
 int C_IPV6 ; 
 int C_RAWMSG ; 
 int C_WANTRD ; 
 int C_WANTWR ; 
 struct sockaddr_in6* Connections ; 
 int EVT_READ ; 
 int EVT_SPEC ; 
 int EVT_WRITE ; 
 int /*<<< orphan*/ * Events ; 
 int MAX_CONNECTIONS ; 
 int MAX_EVENTS ; 
 int /*<<< orphan*/  SM_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct conn_target*) ; 
 int /*<<< orphan*/  conn_connecting ; 
 scalar_t__ conn_generation ; 
 int /*<<< orphan*/  conn_timer_wakeup_gateway ; 
#define  cr_busy 132 
#define  cr_failed 131 
#define  cr_notyet 130 
#define  cr_ok 129 
#define  cr_stopped 128 
 int /*<<< orphan*/  ct_none ; 
 int /*<<< orphan*/  ct_outbound ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr_in6*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,struct sockaddr*,unsigned int*) ; 
 char* FUNC9 (TYPE_8__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int max_connection ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr_in6*,int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC13 (scalar_t__) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outbound_connections ; 
 int /*<<< orphan*/  outbound_connections_created ; 
 scalar_t__ precise_now ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  server_read_write_gateway ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 char* FUNC18 (struct sockaddr_in6*) ; 
 char* FUNC19 (struct sockaddr_in6*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC20 (struct sockaddr_in6*) ; 
 scalar_t__ FUNC21 (struct sockaddr_in6*) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC22 (int,char*,char*,void*,char*,int) ; 

int FUNC23 (struct conn_target *S) {
  int count = 0, good_c = 0, bad_c = 0, stopped_c = 0, need_c;
  struct connection *c, *h;
  event_t *ev;

  FUNC0 (S->refcnt >= 0);

  for (c = S->first_conn; c != (struct connection *) S; c = c->next) {
    int cr = c->type->check_ready (c); 
    switch (cr) {
    case cr_notyet:
    case cr_busy:
      break;
    case cr_ok:
      good_c++;
      break;
    case cr_stopped:
      stopped_c++;
      break;
    case cr_failed:
      bad_c++;
      break;
    default:
      FUNC0 (0);
    }
  }

  S->ready_outbound_connections = good_c;
  need_c = S->min_connections + bad_c + ((stopped_c + 1) >> 1);
  if (need_c > S->max_connections) {
    need_c = S->max_connections;
  }

  if (precise_now < S->next_reconnect && !S->active_outbound_connections) {
    return 0;
  }

  while (S->outbound_connections < need_c) {
    if (verbosity > 0) {
      if (S->target.s_addr) {
	FUNC7 (stderr, "Creating NEW connection to %s:%d\n", FUNC9 (S->target), S->port);
      } else {
	FUNC7 (stderr, "Creating NEW ipv6 connection to [%s]:%d\n", FUNC17 (S->target_ipv6), S->port);
      }
    }
    int cfd = S->target.s_addr ? FUNC1 (S->target.s_addr, S->port, 0) : FUNC2 (S->target_ipv6, S->port, SM_IPV6);
    if (cfd < 0 && verbosity > 0) {
      FUNC4 (S);
      if (verbosity > 0) {
	if (S->target.s_addr) {
	  FUNC7 (stderr, "error connecting to %s:%d: %m", FUNC9 (S->target), S->port);
	} else {
	  FUNC7 (stderr, "error connecting to [%s]:%d\n", FUNC17 (S->target_ipv6), S->port);
	}
      }
      return count;
    }
    if (cfd >= MAX_EVENTS || cfd >= MAX_CONNECTIONS) {
      FUNC3 (cfd);
      FUNC4 (S);
      if (verbosity > 0) {
	if (S->target.s_addr) {
	  FUNC7 (stderr, "out of sockets when connecting to %s:%d", FUNC9(S->target), S->port);
	} else {
	  FUNC7 (stderr, "out of sockets when connecting to [%s]:%d\n", FUNC17 (S->target_ipv6), S->port);
	}
      }
      return count;
    }
    
    if (cfd > max_connection) {
      max_connection = cfd;
    }
    ev = Events + cfd;
    c = Connections + cfd;
    FUNC12 (c, 0, sizeof (struct connection));
    c->fd = cfd;
    c->ev = ev;
    c->target = S;
    c->generation = ++conn_generation;
    c->flags = C_WANTWR;

    if (S->type->flags & C_RAWMSG) {
      c->flags |= C_RAWMSG;
      c->In.state = c->Out.state = 0;
      FUNC16 (&c->in, 0); 
      FUNC16 (&c->out, 0); 
      FUNC16 (&c->in_u, 0); 
      FUNC16 (&c->out_p, 0); 
    } else {
      c->in.magic = c->out.magic = 0;
      FUNC10 (&c->In, c->in_buff, BUFF_SIZE);
      FUNC10 (&c->Out, c->out_buff, BUFF_SIZE);
    }

    c->timer.wakeup = conn_timer_wakeup_gateway;
    c->type = S->type;
    c->extra = S->extra;
    c->basic_type = ct_outbound;
    c->status = conn_connecting;
    c->first_query = c->last_query = (struct conn_query *) c;

    if (S->target.s_addr) {
      static struct sockaddr_in self;
      unsigned self_addrlen;
      FUNC12 (&self, 0, self_addrlen = sizeof (self));
      FUNC8 (c->fd, (struct sockaddr *) &self, &self_addrlen);
      c->our_ip = FUNC13 (self.sin_addr.s_addr);
      c->our_port = FUNC14 (self.sin_port);
      c->remote_ip = FUNC13 (S->target.s_addr);
      c->remote_port = S->port;
      FUNC22 (2, "Created new outbound connection %s:%d -> %s:%d\n", FUNC18 (c), c->our_port, FUNC19 (c), c->remote_port);
    } else {
      c->flags |= C_IPV6;
      static struct sockaddr_in6 self;
      unsigned self_addrlen;
      FUNC12 (&self, 0, self_addrlen = sizeof (self));
      FUNC8 (c->fd, (struct sockaddr *) &self, &self_addrlen);
      FUNC11 (c->our_ipv6, self.sin6_addr.s6_addr, 16);
      FUNC11 (c->remote_ipv6, S->target_ipv6, 16);
      c->our_port = FUNC14 (self.sin6_port);
      c->remote_port = S->port;
      FUNC22 (2, "Created new outbound ipv6 connection [%s]:%d -> [%s]:%d\n", FUNC17 (c->our_ipv6), c->our_port, FUNC17 (c->remote_ipv6), c->remote_port);
    }

    if (c->type->init_outbound (c) >= 0) {
      FUNC6 (cfd, 0, server_read_write_gateway, c);
      FUNC5 (cfd, (c->flags & C_WANTRD ? EVT_READ : 0) | (c->flags & C_WANTWR ? EVT_WRITE : 0) | EVT_SPEC);
      outbound_connections++;
      S->outbound_connections++;
      outbound_connections_created++;
      count++;
    } else {
      if (c->flags & C_RAWMSG) {
	FUNC15 (&c->in);
	FUNC15 (&c->out);
	FUNC15 (&c->in_u);
	FUNC15 (&c->out_p);
      }
      c->basic_type = ct_none;
      FUNC3 (cfd);
      FUNC4 (S);
      return count;
    }

    h = (struct connection *)S;
    c->next = h;
    c->prev = h->prev;
    h->prev->next = c;
    h->prev = c;

    if (verbosity > 0) {
      if (c->flags & C_IPV6) {
	FUNC7 (stderr, "outbound ipv6 connection: handle %d to [%s]:%d\n", c->fd, FUNC17 (S->target_ipv6), S->port);
      } else {
	FUNC7 (stderr, "outbound connection: handle %d to %s:%d\n", c->fd, FUNC9 (S->target), S->port);
      }
    }
  }
  return count;
}