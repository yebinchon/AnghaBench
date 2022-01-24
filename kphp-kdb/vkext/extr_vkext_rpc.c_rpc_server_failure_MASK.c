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
struct rpc_server {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_server*) ; 
 scalar_t__ rpc_status_disconnected ; 

__attribute__((used)) static int FUNC1 (struct rpc_server *server) { /* {{{ */
  if (server->status != rpc_status_disconnected) {
    FUNC0 (server);
    return 0;
  } else {
    return 1;
  }
}