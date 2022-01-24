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
typedef  unsigned long u8 ;
typedef  unsigned long u16 ;
struct clk_hw_omap {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct clk_hw_omap *clk, u8 *dco, u16 m, u8 n)
{
	unsigned long fint, clkinp; /* watch out for overflow */

	clkinp = FUNC1(FUNC0(&clk->hw));
	fint = (clkinp / n) * m;

	if (fint < 1000000000)
		*dco = 2;
	else
		*dco = 4;
}