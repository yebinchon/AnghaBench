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
struct clk_psc_data {int /*<<< orphan*/  domain_id; int /*<<< orphan*/  domain_base; int /*<<< orphan*/  control_base; } ;
struct clk_psc {scalar_t__ lock; struct clk_psc_data* psc_data; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSC_STATE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 struct clk_psc* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct clk_psc *psc = FUNC3(hw);
	struct clk_psc_data *data = psc->psc_data;
	unsigned long flags = 0;

	if (psc->lock)
		FUNC1(psc->lock, flags);

	FUNC0(data->control_base, data->domain_base,
				PSC_STATE_ENABLE, data->domain_id);

	if (psc->lock)
		FUNC2(psc->lock, flags);

	return 0;
}