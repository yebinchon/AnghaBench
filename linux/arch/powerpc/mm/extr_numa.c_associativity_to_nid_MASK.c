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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int MAX_NUMNODES ; 
 int NUMA_NO_NODE ; 
 scalar_t__ distance_ref_points_depth ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 
 size_t min_common_depth ; 
 int /*<<< orphan*/  numa_enabled ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(const __be32 *associativity)
{
	int nid = NUMA_NO_NODE;

	if (!numa_enabled)
		goto out;

	if (FUNC1(associativity, 1) >= min_common_depth)
		nid = FUNC1(&associativity[min_common_depth], 1);

	/* POWER4 LPAR uses 0xffff as invalid node */
	if (nid == 0xffff || nid >= MAX_NUMNODES)
		nid = NUMA_NO_NODE;

	if (nid > 0 &&
		FUNC1(associativity, 1) >= distance_ref_points_depth) {
		/*
		 * Skip the length field and send start of associativity array
		 */
		FUNC0(nid, associativity + 1);
	}

out:
	return nid;
}