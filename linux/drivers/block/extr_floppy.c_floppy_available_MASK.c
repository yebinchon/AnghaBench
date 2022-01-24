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
struct TYPE_2__ {scalar_t__ version; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 scalar_t__ FDC_NONE ; 
 int allowed_drive_mask ; 
 TYPE_1__* fdc_state ; 

__attribute__((used)) static bool FUNC1(int drive)
{
	if (!(allowed_drive_mask & (1 << drive)))
		return false;
	if (fdc_state[FUNC0(drive)].version == FDC_NONE)
		return false;
	return true;
}