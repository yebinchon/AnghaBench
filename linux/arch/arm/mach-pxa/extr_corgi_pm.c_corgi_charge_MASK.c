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
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORGI_GPIO_CHRG_ON ; 
 int /*<<< orphan*/  CORGI_GPIO_CHRG_UKN ; 
 int SHARPSL_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__ sharpsl_pm ; 

__attribute__((used)) static void FUNC2(int on)
{
	if (on) {
		if (FUNC1() && (sharpsl_pm.flags & SHARPSL_SUSPENDED)) {
			FUNC0(CORGI_GPIO_CHRG_ON, 0);
			FUNC0(CORGI_GPIO_CHRG_UKN, 1);
		} else {
			FUNC0(CORGI_GPIO_CHRG_ON, 1);
			FUNC0(CORGI_GPIO_CHRG_UKN, 0);
		}
	} else {
		FUNC0(CORGI_GPIO_CHRG_ON, 0);
		FUNC0(CORGI_GPIO_CHRG_UKN, 0);
	}
}