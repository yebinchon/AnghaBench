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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  tsr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int TSR_ENW ; 
 int TSR_WIS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

void FUNC3(struct kvm_vcpu *vcpu, u32 tsr_bits)
{
	FUNC1(tsr_bits, &vcpu->arch.tsr);

	/*
	 * We may have stopped the watchdog due to
	 * being stuck on final expiration.
	 */
	if (tsr_bits & (TSR_ENW | TSR_WIS))
		FUNC0(vcpu);

	FUNC2(vcpu);
}