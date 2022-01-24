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
struct TYPE_2__ {int serror_pending; int serror_has_esr; } ;
struct kvm_vcpu_events {TYPE_1__ exception; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 

int FUNC1(struct kvm_vcpu *vcpu,
			      struct kvm_vcpu_events *events)
{
	bool serror_pending = events->exception.serror_pending;
	bool has_esr = events->exception.serror_has_esr;

	if (serror_pending && has_esr)
		return -EINVAL;
	else if (serror_pending)
		FUNC0(vcpu);

	return 0;
}