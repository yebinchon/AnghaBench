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
struct clk_hw {int dummy; } ;
struct __prci_wrpll_data {int /*<<< orphan*/  (* disable_bypass ) (struct __prci_data*) ;int /*<<< orphan*/  c; int /*<<< orphan*/  (* enable_bypass ) (struct __prci_data*) ;} ;
struct __prci_data {int dummy; } ;
struct __prci_clock {struct __prci_data* pd; struct __prci_wrpll_data* pwd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct __prci_data*,struct __prci_wrpll_data*,int /*<<< orphan*/ *) ; 
 struct __prci_clock* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct __prci_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct __prci_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw,
					    unsigned long rate,
					    unsigned long parent_rate)
{
	struct __prci_clock *pc = FUNC1(hw);
	struct __prci_wrpll_data *pwd = pc->pwd;
	struct __prci_data *pd = pc->pd;
	int r;

	r = FUNC6(&pwd->c, rate, parent_rate);
	if (r)
		return r;

	if (pwd->enable_bypass)
		pwd->enable_bypass(pd);

	FUNC0(pd, pwd, &pwd->c);

	FUNC4(FUNC5(&pwd->c));

	if (pwd->disable_bypass)
		pwd->disable_bypass(pd);

	return 0;
}