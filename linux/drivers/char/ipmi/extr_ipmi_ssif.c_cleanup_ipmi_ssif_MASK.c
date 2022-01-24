#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  address_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int initialized ; 
 int /*<<< orphan*/  ipmi_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ platform_registered ; 
 TYPE_1__ ssif_i2c_driver ; 
 scalar_t__ ssif_trydmi ; 

__attribute__((used)) static void FUNC4(void)
{
	if (!initialized)
		return;

	initialized = false;

	FUNC1(&ssif_i2c_driver);

	FUNC2(ssif_i2c_driver.address_list);

	if (ssif_trydmi && platform_registered)
		FUNC3(&ipmi_driver);

	FUNC0();
}