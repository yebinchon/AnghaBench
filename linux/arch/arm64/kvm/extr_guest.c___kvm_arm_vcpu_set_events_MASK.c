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
struct TYPE_2__ {int serror_pending; int serror_has_esr; int serror_esr; } ;
struct kvm_vcpu_events {TYPE_1__ exception; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM64_HAS_RAS_EXTN ; 
 int EINVAL ; 
 int ESR_ELx_ISS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 

int FUNC3(struct kvm_vcpu *vcpu,
			      struct kvm_vcpu_events *events)
{
	bool serror_pending = events->exception.serror_pending;
	bool has_esr = events->exception.serror_has_esr;

	if (serror_pending && has_esr) {
		if (!FUNC0(ARM64_HAS_RAS_EXTN))
			return -EINVAL;

		if (!((events->exception.serror_esr) & ~ESR_ELx_ISS_MASK))
			FUNC2(vcpu, events->exception.serror_esr);
		else
			return -EINVAL;
	} else if (serror_pending) {
		FUNC1(vcpu);
	}

	return 0;
}