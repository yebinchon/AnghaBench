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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  mp_INT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ skip_ioapic_setup ; 

int FUNC5(u32 gsi, int *trigger, int *polarity)
{
	int ioapic, pin, idx;

	if (skip_ioapic_setup)
		return -1;

	ioapic = FUNC3(gsi);
	if (ioapic < 0)
		return -1;

	pin = FUNC4(ioapic, gsi);
	if (pin < 0)
		return -1;

	idx = FUNC0(ioapic, pin, mp_INT);
	if (idx < 0)
		return -1;

	*trigger = FUNC2(idx);
	*polarity = FUNC1(idx);
	return 0;
}