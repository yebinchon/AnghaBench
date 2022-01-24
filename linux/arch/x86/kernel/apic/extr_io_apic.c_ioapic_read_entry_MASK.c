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
struct IO_APIC_route_entry {int dummy; } ;
union entry_union {struct IO_APIC_route_entry entry; } ;

/* Variables and functions */
 struct IO_APIC_route_entry FUNC0 (int,int) ; 
 int /*<<< orphan*/  ioapic_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct IO_APIC_route_entry FUNC3(int apic, int pin)
{
	union entry_union eu;
	unsigned long flags;

	FUNC1(&ioapic_lock, flags);
	eu.entry = FUNC0(apic, pin);
	FUNC2(&ioapic_lock, flags);

	return eu.entry;
}