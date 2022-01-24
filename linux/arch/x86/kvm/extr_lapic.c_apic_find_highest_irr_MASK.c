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
struct kvm_lapic {int /*<<< orphan*/  irr_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct kvm_lapic*) ; 

__attribute__((used)) static inline int FUNC2(struct kvm_lapic *apic)
{
	int result;

	/*
	 * Note that irr_pending is just a hint. It will be always
	 * true with virtual interrupt delivery enabled.
	 */
	if (!apic->irr_pending)
		return -1;

	result = FUNC1(apic);
	FUNC0(result == -1 || result >= 16);

	return result;
}