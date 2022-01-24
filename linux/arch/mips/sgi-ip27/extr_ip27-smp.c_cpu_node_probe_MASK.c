#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t nasid_t ;
struct TYPE_3__ {size_t* g_nasidtable; } ;
typedef  TYPE_1__ gda_t ;

/* Variables and functions */
 TYPE_1__* GDA ; 
 void* INVALID_CNODEID ; 
 size_t INVALID_NASID ; 
 int MAXCPUS ; 
 int MAX_COMPACT_NODES ; 
 int MAX_NASIDS ; 
 size_t* compact_to_nasid_node ; 
 void** cpuid_to_compact_node ; 
 int FUNC0 (int,size_t,int) ; 
 int* nasid_to_compact_node ; 
 int /*<<< orphan*/  node_online_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	int i, highest = 0;
	gda_t *gdap = GDA;

	/*
	 * Initialize the arrays to invalid nodeid (-1)
	 */
	for (i = 0; i < MAX_COMPACT_NODES; i++)
		compact_to_nasid_node[i] = INVALID_NASID;
	for (i = 0; i < MAX_NASIDS; i++)
		nasid_to_compact_node[i] = INVALID_CNODEID;
	for (i = 0; i < MAXCPUS; i++)
		cpuid_to_compact_node[i] = INVALID_CNODEID;

	/*
	 * MCD - this whole "compact node" stuff can probably be dropped,
	 * as we can handle sparse numbering now
	 */
	FUNC2(node_online_map);
	for (i = 0; i < MAX_COMPACT_NODES; i++) {
		nasid_t nasid = gdap->g_nasidtable[i];
		if (nasid == INVALID_NASID)
			break;
		compact_to_nasid_node[i] = nasid;
		nasid_to_compact_node[nasid] = i;
		FUNC1(FUNC3());
		highest = FUNC0(i, nasid, highest);
	}

	FUNC4("Discovered %d cpus on %d nodes\n", highest + 1, FUNC3());
}