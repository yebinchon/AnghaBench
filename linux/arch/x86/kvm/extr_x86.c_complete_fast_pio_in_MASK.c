#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int count; int size; int /*<<< orphan*/  port; int /*<<< orphan*/  linear_rip; } ;
struct TYPE_4__ {TYPE_1__ pio; int /*<<< orphan*/  emulate_ctxt; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu)
{
	unsigned long val;

	/* We should only ever be called with arch.pio.count equal to 1 */
	FUNC0(vcpu->arch.pio.count != 1);

	if (FUNC6(!FUNC2(vcpu, vcpu->arch.pio.linear_rip))) {
		vcpu->arch.pio.count = 0;
		return 1;
	}

	/* For size less than 4 we merge, else we zero extend */
	val = (vcpu->arch.pio.size < 4) ? FUNC3(vcpu) : 0;

	/*
	 * Since vcpu->arch.pio.count == 1 let emulator_pio_in_emulated perform
	 * the copy and tracing
	 */
	FUNC1(&vcpu->arch.emulate_ctxt, vcpu->arch.pio.size,
				 vcpu->arch.pio.port, &val, 1);
	FUNC4(vcpu, val);

	return FUNC5(vcpu);
}