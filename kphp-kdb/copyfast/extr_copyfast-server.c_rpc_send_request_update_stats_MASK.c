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
struct rpc_request_update_stats {int dummy; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ Q ; 
 int /*<<< orphan*/  RPC_TYPE_REQUEST_UPDATE_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long long) ; 
 scalar_t__ FUNC1 (struct rpc_request_update_stats*,int,struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_request_update_stats*,struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC3 (struct connection *c, long long id) {
  if (verbosity >= 2) {
    FUNC0 (stderr, "rpc_send_request_update_stats: id = %lld\n", id);
  }
  struct rpc_request_update_stats *T = (struct rpc_request_update_stats *)Q;
  if (FUNC1 (T, sizeof (struct rpc_request_update_stats), c, RPC_TYPE_REQUEST_UPDATE_STATS) < 0) {
    return -1;
  }
  return FUNC2 (T, c);
}