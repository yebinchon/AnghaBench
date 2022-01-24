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
struct impd1_clk {int /*<<< orphan*/  pclkname; int /*<<< orphan*/  vco1name; int /*<<< orphan*/  vco2name; int /*<<< orphan*/  uartname; int /*<<< orphan*/  spiname; int /*<<< orphan*/  scname; int /*<<< orphan*/  pclk; int /*<<< orphan*/  vco1clk; int /*<<< orphan*/  vco2clk; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  spiclk; int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct impd1_clk* impd1_clks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(unsigned int id)
{
	int i;
	struct impd1_clk *imc;

	if (id > 3)
		return;
	imc = &impd1_clks[id];

	for (i = 0; i < FUNC0(imc->clks); i++)
		FUNC2(imc->clks[i]);
	FUNC1(imc->spiclk);
	FUNC1(imc->uartclk);
	FUNC1(imc->vco2clk);
	FUNC1(imc->vco1clk);
	FUNC1(imc->pclk);
	FUNC3(imc->scname);
	FUNC3(imc->spiname);
	FUNC3(imc->uartname);
	FUNC3(imc->vco2name);
	FUNC3(imc->vco1name);
	FUNC3(imc->pclkname);
}