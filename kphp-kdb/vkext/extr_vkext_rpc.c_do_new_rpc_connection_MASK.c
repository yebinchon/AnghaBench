#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rpc_server_collection {int num; int /*<<< orphan*/ * servers; } ;
struct rpc_connection {long long default_actor_id; double default_query_timeout; struct rpc_server_collection* servers; scalar_t__ fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_server_collection*) ; 
 int /*<<< orphan*/  connect ; 
 int /*<<< orphan*/  last_connection_fd ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  rpc_connection_tree ; 
 struct rpc_server_collection* FUNC6 (unsigned int,int,double,double) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char**,int*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int,double,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct rpc_connection*,int /*<<< orphan*/ ) ; 
 struct rpc_connection* FUNC10 (int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int,int) ; 

struct rpc_connection *FUNC12 (unsigned host, int port, int num, long long default_actor_id, double default_query_timeout, double connect_timeout, double retry_timeout, char **error, int *errnum) { /* {{{ */
  FUNC0 (connect);
  FUNC3 (connect);
  struct rpc_server_collection *servers = FUNC6 (host, port, connect_timeout, retry_timeout);
  FUNC4 (servers);
  if (servers->num < num) {
    //fprintf (stderr, "( servers->num = %d, servers=%p, servers->servers = %p\n", servers->num, servers, servers->servers);
    servers->servers = FUNC11 (servers->servers, servers->num * sizeof (void *), num * sizeof (void *));
    //fprintf (stderr, ")");
    FUNC1 (servers->num * sizeof (void *), num * sizeof (void *));
    int i;
    for (i = servers->num; i < num; i++) {
      servers->servers[i] = FUNC8 (host, port, default_query_timeout, retry_timeout);
    }
    servers->num = num;
  }

  int i;
  int cc = 0;
  for (i = 0; i < servers->num; i++) {
    if (FUNC7 (servers->servers[i], error, errnum) >= 0) {
      cc ++;
    }
  }
  if (!cc) {
    FUNC2 (connect);
    return 0;
  }

  struct rpc_connection *c = FUNC10 (sizeof (*c));
  c->fd = last_connection_fd ++;
  c->servers = servers;
  c->default_actor_id = default_actor_id;
  c->default_query_timeout = default_query_timeout;
  rpc_connection_tree = FUNC9 (rpc_connection_tree, c, FUNC5 ());
  FUNC2 (connect);
  return c;
}