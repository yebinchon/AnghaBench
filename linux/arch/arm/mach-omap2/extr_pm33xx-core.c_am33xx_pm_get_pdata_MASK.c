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
struct am33xx_pm_platform_data {int dummy; } ;

/* Variables and functions */
 struct am33xx_pm_platform_data am33xx_ops ; 
 struct am33xx_pm_platform_data am43xx_ops ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static struct am33xx_pm_platform_data *FUNC2(void)
{
	if (FUNC0())
		return &am33xx_ops;
	else if (FUNC1())
		return &am43xx_ops;
	else
		return NULL;
}