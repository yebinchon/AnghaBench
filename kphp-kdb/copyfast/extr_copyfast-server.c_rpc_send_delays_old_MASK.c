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
struct rpc_delays_old {int /*<<< orphan*/  slow_delay; int /*<<< orphan*/  medium_delay; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ Q ; 
 int /*<<< orphan*/  RPC_TYPE_DELAYS_OLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  medium_delay ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_delays_old*,int,struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_delays_old*,struct connection*) ; 
 int /*<<< orphan*/  slow_delay ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC3 (struct connection *c) {
  if (verbosity >= 2) {
    FUNC0 (stderr, "rpc_send_delays_old: slow_delay = %d, medium_delay = %d\n", slow_delay, medium_delay);
  }
  struct rpc_delays_old *T = (struct rpc_delays_old *)Q;
  FUNC1 (T, sizeof (struct rpc_delays_old), c, RPC_TYPE_DELAYS_OLD);
  T->medium_delay = medium_delay;
  T->slow_delay = slow_delay;
  return FUNC2 (T, c);
}