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
struct TYPE_2__ {int nr_nodes; int /*<<< orphan*/  nr_cpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_POSSIBLE ; 
 TYPE_1__ loongson_sysconf ; 
 int /*<<< orphan*/  node_online_map ; 
 int /*<<< orphan*/  node_possible_map ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	int i;

	FUNC2(node_possible_map);
	FUNC2(node_online_map);
	for (i = 0; i < loongson_sysconf.nr_nodes; i++) {
		FUNC1(FUNC3(), N_POSSIBLE);
		FUNC0(FUNC3());
	}

	FUNC4("NUMA: Discovered %d cpus on %d nodes\n",
		loongson_sysconf.nr_cpus, FUNC3());
}