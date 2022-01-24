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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kernel_backlight_disabled ; 
 int /*<<< orphan*/  pmac_backlight_set_legacy_queued ; 

__attribute__((used)) static void FUNC2(struct work_struct *work)
{
	if (FUNC1(&kernel_backlight_disabled))
		return;

	FUNC0(pmac_backlight_set_legacy_queued);
}