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
typedef  int /*<<< orphan*/  u32 ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  CKCTL_6338_SPI_EN ; 
 int /*<<< orphan*/  CKCTL_6348_SPI_EN ; 
 int /*<<< orphan*/  CKCTL_6358_SPI_EN ; 
 int /*<<< orphan*/  CKCTL_6362_SPI_EN ; 
 int /*<<< orphan*/  CKCTL_6368_SPI_EN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct clk *clk, int enable)
{
	u32 mask;

	if (FUNC1())
		mask = CKCTL_6338_SPI_EN;
	else if (FUNC2())
		mask = CKCTL_6348_SPI_EN;
	else if (FUNC0() || FUNC3())
		mask = CKCTL_6358_SPI_EN;
	else if (FUNC4())
		mask = CKCTL_6362_SPI_EN;
	else
		/* BCMCPU_IS_6368 */
		mask = CKCTL_6368_SPI_EN;
	FUNC5(mask, enable);
}