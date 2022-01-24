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
struct kvm_lapic {int /*<<< orphan*/  vcpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  vec_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int,struct kvm_lapic*) ; 
 int FUNC1 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_lapic*,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct kvm_lapic *apic)
{
	int vector = FUNC1(apic);

	FUNC7(apic, vector);

	/*
	 * Not every write EOI will has corresponding ISR,
	 * one example is when Kernel check timer on setup_IO_APIC
	 */
	if (vector == -1)
		return vector;

	FUNC0(vector, apic);
	FUNC2(apic);

	if (FUNC6(vector, FUNC8(apic->vcpu)->vec_bitmap))
		FUNC3(apic->vcpu, vector);

	FUNC4(apic, vector);
	FUNC5(KVM_REQ_EVENT, apic->vcpu);
	return vector;
}