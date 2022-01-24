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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 struct clk* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sa1111_pcmcia_gpio_table ; 

__attribute__((used)) static void FUNC5(void)
{
	struct clk *clk;

	FUNC4(&sa1111_pcmcia_gpio_table);

	/* Add an alias for the SA1111 PCMCIA clock */
	clk = FUNC1("pxa2xx-pcmcia", NULL);
	if (!FUNC0(clk)) {
		FUNC3(clk, NULL, "1800");
		FUNC2(clk);
	}
}