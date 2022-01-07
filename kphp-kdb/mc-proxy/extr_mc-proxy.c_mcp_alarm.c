
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct memcache_server_functions {TYPE_1__* info; } ;
struct connection {int fd; int pending_queries; int status; int * extra; } ;
struct TYPE_2__ {int t_timeouts; int a_timeouts; int mc_proxy_inbound; } ;


 TYPE_1__* CC ;
 int assert (int) ;
 scalar_t__ conn_wait_net ;
 int fprintf (int ,char*,int,int,int) ;
 int mcp_wakeup (struct connection*) ;
 int stderr ;
 int verbosity ;

int mcp_alarm (struct connection *c) {
  if (verbosity > 1) {
    fprintf (stderr, "proxy_memcache_server connection %d timeout alarm, %d queries pending, status=%d\n", c->fd, c->pending_queries, c->status);
  }

  CC = ((struct memcache_server_functions *) c->extra)->info;
  assert (CC && &CC->mc_proxy_inbound == c->extra);
  CC->a_timeouts ++;
  CC->t_timeouts ++;

  assert (c->status == conn_wait_net);
  return mcp_wakeup (c);
}
