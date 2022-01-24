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
struct TYPE_2__ {int /*<<< orphan*/  i81x_gtt_table; scalar_t__ registers; } ;

/* Variables and functions */
 int /*<<< orphan*/  I810_GTT_ORDER ; 
 scalar_t__ I810_PGETBL_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ intel_private ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(0, intel_private.registers+I810_PGETBL_CTL);
	FUNC0(intel_private.i81x_gtt_table, I810_GTT_ORDER);
}