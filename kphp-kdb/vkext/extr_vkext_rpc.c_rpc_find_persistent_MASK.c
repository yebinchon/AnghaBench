#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct rpc_server_collection* x; } ;
typedef  TYPE_1__ tree_server_collection_t ;
struct rpc_server_collection {unsigned int host; int port; scalar_t__ num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_server_collection*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  server_collection_tree ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rpc_server_collection*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,struct rpc_server_collection*) ; 
 struct rpc_server_collection* FUNC5 (int) ; 

struct rpc_server_collection *FUNC6 (unsigned host, int port, double timeout, double retry_interval) { /* {{{ */
  struct rpc_server_collection t;
  t.host = host;
  t.port = port;
  tree_server_collection_t *T = FUNC4 (server_collection_tree, &t);
  struct rpc_server_collection *servers;
  if (T) {
    servers = T->x;
  } else {
    servers = FUNC5 (sizeof (*servers));    
    FUNC0 (sizeof (*servers));
    FUNC1 (servers);
    servers->host = host;
    servers->port = port;
    servers->num = 0;
//  servers->ti
//  servers = rpc_server_new (host, port, timeout, retry_interval);
    server_collection_tree = FUNC3 (server_collection_tree, servers, FUNC2 ());
  }
//  server->timeout = timeout;
//  server->retry_interval = retry_interval;
  return servers;
}