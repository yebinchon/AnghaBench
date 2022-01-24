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
 int /*<<< orphan*/  drc_pmem_match ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmem_node ; 

__attribute__((used)) static int FUNC2(void)
{
	pmem_node = FUNC0(NULL, "ibm,persistent-memory");
	if (!pmem_node)
		return 0;

	/*
	 * The generic OF bus probe/populate handles creating platform devices
	 * from the child (ibm,pmemory) nodes. The generic code registers an of
	 * reconfig notifier to handle the hot-add/remove cases too.
	 */
	FUNC1(pmem_node, drc_pmem_match, NULL);

	return 0;
}