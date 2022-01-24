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
struct toptree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct toptree* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct toptree*,int) ; 

__attribute__((used)) static struct toptree *FUNC3(int id, int nodes)
{
	struct toptree *tree;
	int nid;

	tree = FUNC1(TOPOLOGY, id);
	if (!tree)
		goto fail;
	for (nid = 0; nid < nodes; nid++) {
		if (!FUNC2(tree, nid))
			goto fail;
	}
	return tree;
fail:
	FUNC0("NUMA emulation could not allocate topology");
}