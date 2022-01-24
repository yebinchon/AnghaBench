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
typedef  int /*<<< orphan*/  u64 ;
struct memcons {int /*<<< orphan*/  magic; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ MEMCONS_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*,char const*,int /*<<< orphan*/ *) ; 
 struct memcons* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

struct memcons *FUNC4(struct device_node *node, const char *mc_prop_name)
{
	u64 mcaddr;
	struct memcons *mc;

	if (FUNC1(node, mc_prop_name, &mcaddr)) {
		FUNC3("%s property not found, no message log\n",
			mc_prop_name);
		goto out_err;
	}

	mc = FUNC2(mcaddr);
	if (!mc) {
		FUNC3("memory console address is invalid\n");
		goto out_err;
	}

	if (FUNC0(mc->magic) != MEMCONS_MAGIC) {
		FUNC3("memory console version is invalid\n");
		goto out_err;
	}

	return mc;

out_err:
	return NULL;
}