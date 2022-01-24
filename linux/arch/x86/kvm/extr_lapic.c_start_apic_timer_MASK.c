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
struct TYPE_2__ {int /*<<< orphan*/  pending; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kvm_lapic*) ; 
 scalar_t__ FUNC1 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*) ; 

__attribute__((used)) static void FUNC5(struct kvm_lapic *apic)
{
	FUNC2(&apic->lapic_timer.pending, 0);

	if ((FUNC1(apic) || FUNC0(apic))
	    && !FUNC4(apic))
		return;

	FUNC3(apic);
}