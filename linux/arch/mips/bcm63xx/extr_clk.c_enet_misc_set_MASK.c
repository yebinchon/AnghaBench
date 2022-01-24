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
 int /*<<< orphan*/  CKCTL_6338_ENET_EN ; 
 int /*<<< orphan*/  CKCTL_6345_ENET_EN ; 
 int /*<<< orphan*/  CKCTL_6348_ENET_EN ; 
 int /*<<< orphan*/  CKCTL_6358_EMUSB_EN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct clk *clk, int enable)
{
	u32 mask;

	if (FUNC0())
		mask = CKCTL_6338_ENET_EN;
	else if (FUNC1())
		mask = CKCTL_6345_ENET_EN;
	else if (FUNC2())
		mask = CKCTL_6348_ENET_EN;
	else
		/* BCMCPU_IS_6358 */
		mask = CKCTL_6358_EMUSB_EN;
	FUNC3(mask, enable);
}