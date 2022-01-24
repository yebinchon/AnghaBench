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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** distance_lookup_table ; 
 int /*<<< orphan*/ * distance_ref_points ; 
 int distance_ref_points_depth ; 
 int /*<<< orphan*/  form1_affinity ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC2(int nid,
		const __be32 *associativity)
{
	int i;

	if (!form1_affinity)
		return;

	for (i = 0; i < distance_ref_points_depth; i++) {
		const __be32 *entry;

		entry = &associativity[FUNC0(distance_ref_points[i]) - 1];
		distance_lookup_table[nid][i] = FUNC1(entry, 1);
	}
}