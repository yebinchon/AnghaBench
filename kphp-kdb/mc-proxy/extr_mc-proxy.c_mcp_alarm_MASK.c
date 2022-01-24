#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct memcache_server_functions {TYPE_1__* info; } ;
struct connection {int fd; int pending_queries; int status; int /*<<< orphan*/ * extra; } ;
struct TYPE_2__ {int /*<<< orphan*/  t_timeouts; int /*<<< orphan*/  a_timeouts; int /*<<< orphan*/  mc_proxy_inbound; } ;

/* Variables and functions */
 TYPE_1__* CC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ conn_wait_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC3 (struct connection *c) {
  if (verbosity > 1) {
    FUNC1 (stderr, "proxy_memcache_server connection %d timeout alarm, %d queries pending, status=%d\n", c->fd, c->pending_queries, c->status);
  }

  CC = ((struct memcache_server_functions *) c->extra)->info;
  FUNC0 (CC && &CC->mc_proxy_inbound == c->extra);
  CC->a_timeouts ++;
  CC->t_timeouts ++;
  
  FUNC0 (c->status == conn_wait_net);
  return FUNC2 (c);
}