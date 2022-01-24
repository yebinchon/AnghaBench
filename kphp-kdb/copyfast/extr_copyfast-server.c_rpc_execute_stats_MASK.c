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
typedef  union engine_stats {int dummy; } engine_stats ;
struct rpc_stats {int /*<<< orphan*/  stats; int /*<<< orphan*/  id; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* nodes ; 
 int nodes_num ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC4 (struct connection *c, struct rpc_stats *P, int len) {
  if (verbosity >= 2) {
    FUNC1 (stderr, "rpc_execute_stats: len = %d\n", len);
  }
  if (len != sizeof (struct rpc_stats)) {
    return 0;
  }
  int n = FUNC2 (P->id);
  if (n < 0) {
    return 0;
  }
  FUNC0 (0 <= n && n < nodes_num);
  FUNC3 (&nodes[n].stats, &P->stats, sizeof (union engine_stats));
  return 0;

}