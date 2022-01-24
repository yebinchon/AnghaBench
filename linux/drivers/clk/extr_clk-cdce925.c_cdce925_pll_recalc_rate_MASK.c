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
struct clk_cdce925_pll {int /*<<< orphan*/  m; int /*<<< orphan*/  n; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_cdce925_pll* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
		unsigned long parent_rate)
{
	/* Output frequency of PLL is Fout = (Fin/Pdiv)*(N/M) */
	struct clk_cdce925_pll *data = FUNC1(hw);

	return FUNC0(parent_rate, data->n, data->m);
}