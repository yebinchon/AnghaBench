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
struct irq_alloc_info {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned int IOAPIC_MAP_CHECK ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_INT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int,unsigned int,struct irq_alloc_info*) ; 

int FUNC4(u32 gsi, unsigned int flags, struct irq_alloc_info *info)
{
	int ioapic, pin, idx;

	ioapic = FUNC1(gsi);
	if (ioapic < 0)
		return -ENODEV;

	pin = FUNC2(ioapic, gsi);
	idx = FUNC0(ioapic, pin, mp_INT);
	if ((flags & IOAPIC_MAP_CHECK) && idx < 0)
		return -ENODEV;

	return FUNC3(gsi, idx, ioapic, pin, flags, info);
}