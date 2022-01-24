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
struct dra7_atl_desc {int enabled; int /*<<< orphan*/  id; TYPE_1__* cinfo; scalar_t__ divider; int /*<<< orphan*/  valid; int /*<<< orphan*/  probed; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DRA7_ATL_SWEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dra7_atl_desc* FUNC5 (struct clk_hw*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw)
{
	struct dra7_atl_desc *cdesc = FUNC5(hw);

	if (!cdesc->probed)
		goto out;

	if (FUNC6(!cdesc->valid))
		FUNC3(cdesc->cinfo->dev, "atl%d has not been configured\n",
			 cdesc->id);
	FUNC4(cdesc->cinfo->dev);

	FUNC2(cdesc->cinfo, FUNC0(cdesc->id),
		  cdesc->divider - 1);
	FUNC2(cdesc->cinfo, FUNC1(cdesc->id), DRA7_ATL_SWEN);

out:
	cdesc->enabled = true;

	return 0;
}