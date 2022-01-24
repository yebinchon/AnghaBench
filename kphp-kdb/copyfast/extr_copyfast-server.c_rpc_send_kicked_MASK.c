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
struct rpc_kicked {int dummy; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ Q ; 
 int /*<<< orphan*/  RPC_TYPE_KICKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_kicked*,int,struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_kicked*,struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC3 (struct connection *c) {
  if (verbosity >= 2) {
    FUNC0 (stderr, "rpc_send_kicked\n");
  }
  struct rpc_kicked *T = (struct rpc_kicked *)Q;
  FUNC1 (T, sizeof (struct rpc_kicked), c, RPC_TYPE_KICKED);
  return FUNC2 (T, c);
}