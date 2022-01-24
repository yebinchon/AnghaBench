#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  charge_mode; scalar_t__ full_count; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHRG_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sharpsl_bat ; 
 TYPE_1__ sharpsl_pm ; 
 int /*<<< orphan*/  toggle_charger ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC0(sharpsl_pm.dev, "Turning Charger On\n");

	sharpsl_pm.full_count = 0;
	sharpsl_pm.charge_mode = CHRG_ON;
	FUNC2(&toggle_charger, FUNC1(250));
	FUNC2(&sharpsl_bat, FUNC1(500));
}