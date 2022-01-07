
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int fd; scalar_t__ state; TYPE_2__* ev; struct connection* next; TYPE_1__* prev; struct cluster_server* serv; } ;
struct cluster_server {int port; scalar_t__ rconn; scalar_t__ conn; scalar_t__ reconnect_time; int addr; int conn_retries; struct connection* c; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {struct connection* next; } ;


 scalar_t__ C_INCONN ;
 int EVA_DESTROY ;
 int active_outbound_connections ;
 int assert (int) ;
 int create_client (struct cluster_server*) ;
 int fprintf (int ,char*,...) ;
 int free_connection_buffers (struct connection*) ;
 char* inet_ntoa (int ) ;
 int memset (struct connection*,int ,int) ;
 scalar_t__ now ;
 int outbound_connections ;
 int stderr ;
 scalar_t__ verbosity ;

int clear_client (struct connection *c) {
  struct cluster_server *S = c->serv;

  if (verbosity > 0) {
    fprintf (stderr, "cleaning outbound socket %d...\n", c->fd);
  }

  if (c->state == C_INCONN) {
    fprintf (stderr, "could not connect to %s:%d\n", inet_ntoa(c->serv->addr), c->serv->port);

  } else {
    S->rconn--;
    assert (S->rconn >= 0);
    active_outbound_connections--;
  }
  S->conn--;
  assert (S->conn >= 0);
  outbound_connections--;
  if (c->prev) { c->prev->next = c->next; }
  if (c->next) { c->next->prev = c->prev; }
  if (S->c == c) { S->c = c->next; }
  free_connection_buffers (c);

  if (c->ev) {
    c->ev->data = 0;
  }
  memset (c, 0, sizeof(struct connection));

  assert (S->conn >= 0);
  if (!S->conn) {
    S->c = 0;

    if (now >= S->reconnect_time) {
      S->reconnect_time = now + 1;
      S->conn_retries++;
      if (verbosity > 0) {
  fprintf (stderr, "trying to reconnect to %s:%d...\n", inet_ntoa (S->addr), S->port);
      }
      create_client (S);
    }
  }

  return EVA_DESTROY;
}
