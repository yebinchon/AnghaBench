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
struct TYPE_4__ {int serror_pending; int /*<<< orphan*/  serror_esr; scalar_t__ serror_has_esr; } ;
struct kvm_vcpu_events {TYPE_2__ exception; } ;
struct TYPE_3__ {int hcr_el2; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM64_HAS_RAS_EXTN ; 
 int HCR_VSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 

int FUNC2(struct kvm_vcpu *vcpu,
			      struct kvm_vcpu_events *events)
{
	events->exception.serror_pending = !!(vcpu->arch.hcr_el2 & HCR_VSE);
	events->exception.serror_has_esr = FUNC0(ARM64_HAS_RAS_EXTN);

	if (events->exception.serror_pending && events->exception.serror_has_esr)
		events->exception.serror_esr = FUNC1(vcpu);

	return 0;
}