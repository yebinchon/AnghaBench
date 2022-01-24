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

/* Variables and functions */
 scalar_t__* __cluster_count ; 
 int /*<<< orphan*/  dump_cluster_id ; 
 int /*<<< orphan*/  rpc_cluster_tree ; 
 scalar_t__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2 (void) {
  __cluster_count = FUNC0 (4);
  *__cluster_count = 0;
  FUNC1 (rpc_cluster_tree, dump_cluster_id);
}