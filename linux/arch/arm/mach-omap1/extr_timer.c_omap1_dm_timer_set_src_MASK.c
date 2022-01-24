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
typedef  int u32 ;
struct platform_device {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOD_CONF_CTRL_1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev,
				int source)
{
	int n = (pdev->id - 1) << 1;
	u32 l;

	l = FUNC0(MOD_CONF_CTRL_1) & ~(0x03 << n);
	l |= source << n;
	FUNC1(l, MOD_CONF_CTRL_1);

	return 0;
}