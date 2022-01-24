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
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_3__ {scalar_t__ use_skf; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu)
{
	int rc;

	rc = FUNC2(vcpu);
	if (rc)
		return rc;
	if (vcpu->kvm->arch.use_skf) {
		/* with storage-key facility, SIE interprets it for us */
		FUNC1(vcpu);
		FUNC0(vcpu, 4, "%s", "retrying storage key operation");
		return -EAGAIN;
	}
	return 0;
}