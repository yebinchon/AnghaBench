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
typedef  scalar_t__ u32 ;
struct reset_controller_dev {int dummy; } ;
struct aspeed_reset {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 scalar_t__ ASPEED_G6_RESET_CTRL ; 
 scalar_t__ ASPEED_G6_RESET_CTRL2 ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct aspeed_reset* FUNC2 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC3(struct reset_controller_dev *rcdev,
				    unsigned long id)
{
	struct aspeed_reset *ar = FUNC2(rcdev);
	u32 rst = FUNC0(id);
	u32 reg = id >= 32 ? ASPEED_G6_RESET_CTRL2 : ASPEED_G6_RESET_CTRL;

	/* Use set to clear register */
	return FUNC1(ar->map, reg + 0x04, rst);
}