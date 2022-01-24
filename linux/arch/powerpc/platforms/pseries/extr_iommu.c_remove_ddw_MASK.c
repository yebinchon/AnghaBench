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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct property {int length; struct dynamic_dma_window_prop* value; } ;
struct dynamic_dma_window_prop {int /*<<< orphan*/  window_shift; int /*<<< orphan*/  liobn; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRECT64_PROPNAME ; 
 unsigned long long PAGE_SHIFT ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 struct property* FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct device_node*,struct property*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct device_node*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct device_node*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned long long,struct dynamic_dma_window_prop*) ; 

__attribute__((used)) static void FUNC8(struct device_node *np, bool remove_prop)
{
	struct dynamic_dma_window_prop *dwp;
	struct property *win64;
	u32 ddw_avail[3];
	u64 liobn;
	int ret = 0;

	ret = FUNC2(np, "ibm,ddw-applicable",
					 &ddw_avail[0], 3);

	win64 = FUNC1(np, DIRECT64_PROPNAME, NULL);
	if (!win64)
		return;

	if (ret || win64->length < sizeof(*dwp))
		goto delprop;

	dwp = win64->value;
	liobn = (u64)FUNC0(dwp->liobn);

	/* clear the whole window, note the arg is in kernel pages */
	ret = FUNC7(0,
		1ULL << (FUNC0(dwp->window_shift) - PAGE_SHIFT), dwp);
	if (ret)
		FUNC5("%pOF failed to clear tces in window.\n",
			np);
	else
		FUNC4("%pOF successfully cleared tces in window.\n",
			 np);

	ret = FUNC6(ddw_avail[2], 1, 1, NULL, liobn);
	if (ret)
		FUNC5("%pOF: failed to remove direct window: rtas returned "
			"%d to ibm,remove-pe-dma-window(%x) %llx\n",
			np, ret, ddw_avail[2], liobn);
	else
		FUNC4("%pOF: successfully removed direct window: rtas returned "
			"%d to ibm,remove-pe-dma-window(%x) %llx\n",
			np, ret, ddw_avail[2], liobn);

delprop:
	if (remove_prop)
		ret = FUNC3(np, win64);
	if (ret)
		FUNC5("%pOF: failed to remove direct window property: %d\n",
			np, ret);
}