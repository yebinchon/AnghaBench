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
struct rpc_delays {long long id; int /*<<< orphan*/  slow_delay; int /*<<< orphan*/  medium_delay; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ Q ; 
 int /*<<< orphan*/  RPC_TYPE_DELAYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  medium_delay ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_delays*,int,struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_delays*,struct connection*) ; 
 int /*<<< orphan*/  slow_delay ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC3 (struct connection *c, long long id) {
  if (verbosity >= 2) {
    FUNC0 (stderr, "rpc_send_delays: slow_delay = %d, medium_delay = %d\n", slow_delay, medium_delay);
  }
  struct rpc_delays *T = (struct rpc_delays *)Q;
  FUNC1 (T, sizeof (struct rpc_delays), c, RPC_TYPE_DELAYS);
  T->medium_delay = medium_delay;
  T->slow_delay = slow_delay;
  T->id = id;
  return FUNC2 (T, c);
}