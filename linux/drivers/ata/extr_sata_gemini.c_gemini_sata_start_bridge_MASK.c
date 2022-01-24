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
struct sata_gemini {struct clk* sata1_pclk; struct clk* sata0_pclk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int FUNC2 (struct sata_gemini*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct sata_gemini *sg, unsigned int bridge)
{
	struct clk *pclk;
	int ret;

	if (bridge == 0)
		pclk = sg->sata0_pclk;
	else
		pclk = sg->sata1_pclk;
	FUNC1(pclk);
	FUNC3(10);

	/* Do not keep clocking a bridge that is not online */
	ret = FUNC2(sg, bridge);
	if (ret)
		FUNC0(pclk);

	return ret;
}