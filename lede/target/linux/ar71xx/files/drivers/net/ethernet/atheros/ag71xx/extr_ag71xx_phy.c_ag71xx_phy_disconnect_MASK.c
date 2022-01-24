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
struct ag71xx_platform_data {scalar_t__ switch_data; } ;
struct ag71xx {scalar_t__ phy_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 struct ag71xx_platform_data* FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct ag71xx *ag)
{
	struct ag71xx_platform_data *pdata = FUNC1(ag);

	if (pdata->switch_data)
		FUNC0(ag);
	else if (ag->phy_dev)
		FUNC2(ag->phy_dev);
}