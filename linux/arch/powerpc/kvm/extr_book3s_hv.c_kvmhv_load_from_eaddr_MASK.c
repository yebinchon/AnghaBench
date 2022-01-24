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
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_2__ {scalar_t__ nested; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu, ulong *eaddr, void *ptr,
				 int size)
{
	int rc = -EINVAL;

	if (FUNC1(vcpu)) {
		rc = FUNC0(vcpu, *eaddr, ptr, size);

		if (rc > 0)
			rc = -EINVAL;
	}

	/* For now quadrants are the only way to access nested guest memory */
	if (rc && vcpu->arch.nested)
		rc = -EAGAIN;

	return rc;
}