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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  CKCTL_6328_USBD_EN ; 
 int /*<<< orphan*/  CKCTL_6362_USBD_EN ; 
 int /*<<< orphan*/  CKCTL_6368_USBD_EN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct clk *clk, int enable)
{
	if (FUNC0())
		FUNC3(CKCTL_6328_USBD_EN, enable);
	else if (FUNC1())
		FUNC3(CKCTL_6362_USBD_EN, enable);
	else if (FUNC2())
		FUNC3(CKCTL_6368_USBD_EN, enable);
}