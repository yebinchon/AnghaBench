#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_update_stats {int /*<<< orphan*/  stats; int /*<<< orphan*/  id; } ;
struct long_update_stats {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  update_stats_sent; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;

/* Variables and functions */
 int /*<<< orphan*/  NODE_ID ; 
 scalar_t__ Q ; 
 int /*<<< orphan*/  RPC_TYPE_UPDATE_STATS ; 
 TYPE_2__* STATS ; 
 int /*<<< orphan*/  UPDATE_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct rpc_update_stats*,int,struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_update_stats*,struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,struct connection*) ; 

int FUNC4 (struct connection *c) {
  FUNC3 (2, "rpc_send_update_stats: c = %p\n", c);
  struct rpc_update_stats *T = (struct rpc_update_stats *)Q;
  if (FUNC1 (T, sizeof (struct rpc_update_stats), c, RPC_TYPE_UPDATE_STATS) < 0) {
    return -1;
  }
  T->id = NODE_ID;
  FUNC0 (&T->stats, UPDATE_STATS, sizeof (struct long_update_stats));
  STATS->structured.update_stats_sent++;
  return FUNC2 (T, c);
}