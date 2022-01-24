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
struct TYPE_2__ {int /*<<< orphan*/  pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOK3S_IRQPRIO_EXTERNAL ; 
 int LPCR_MER ; 
 int /*<<< orphan*/  SPRN_LPCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	/* Note: Only called on self ! */
	FUNC0(BOOK3S_IRQPRIO_EXTERNAL, &vcpu->arch.pending_exceptions);
	FUNC2(SPRN_LPCR, FUNC1(SPRN_LPCR) & ~LPCR_MER);
}