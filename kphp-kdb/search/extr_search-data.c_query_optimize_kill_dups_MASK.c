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
 int /*<<< orphan*/  Q_root ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ tot_query_nodes_kill_dup ; 
 scalar_t__ tot_query_nodes_list ; 

__attribute__((used)) static void FUNC2 (void) {
  tot_query_nodes_kill_dup = tot_query_nodes_list = 0;
  FUNC0 (Q_root);
  Q_root = FUNC1 (Q_root);
}