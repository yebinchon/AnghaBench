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
typedef  int /*<<< orphan*/  u8 ;
struct kvm_s390_local_interrupt {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct kvm_s390_local_interrupt local_int; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int SIGP_CC_BUSY ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu,
				   struct kvm_vcpu *dst_vcpu, u8 order_code)
{
	struct kvm_s390_local_interrupt *li = &dst_vcpu->arch.local_int;
	/* handle (RE)START in user space */
	int rc = -EOPNOTSUPP;

	/* make sure we don't race with STOP irq injection */
	FUNC1(&li->lock);
	if (FUNC0(dst_vcpu))
		rc = SIGP_CC_BUSY;
	FUNC2(&li->lock);

	return rc;
}