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
struct TYPE_2__ {int entries; } ;
union IO_APIC_reg_01 {TYPE_1__ bits; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  ioapic_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(int ioapic)
{
	union IO_APIC_reg_01	reg_01;
	unsigned long flags;

	FUNC1(&ioapic_lock, flags);
	reg_01.raw = FUNC0(ioapic, 1);
	FUNC2(&ioapic_lock, flags);

	/* The register returns the maximum index redir index
	 * supported, which is one less than the total number of redir
	 * entries.
	 */
	return reg_01.bits.entries + 1;
}