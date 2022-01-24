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
typedef  int /*<<< orphan*/  u32 ;
struct kvmppc_xive {scalar_t__ vp_base; int /*<<< orphan*/ * ops; int /*<<< orphan*/  single_escalation; int /*<<< orphan*/  lock; int /*<<< orphan*/  mapping_lock; struct kvm* kvm; struct kvm_device* dev; } ;
struct kvm_device {struct kvmppc_xive* private; struct kvm* kvm; } ;
struct TYPE_2__ {struct kvmppc_xive* xive; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  KVM_MAX_VCPUS ; 
 scalar_t__ XIVE_INVALID_VP ; 
 struct kvmppc_xive* FUNC0 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvmppc_xive_native_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct kvm_device *dev, u32 type)
{
	struct kvmppc_xive *xive;
	struct kvm *kvm = dev->kvm;
	int ret = 0;

	FUNC2("Creating xive native device\n");

	if (kvm->arch.xive)
		return -EEXIST;

	xive = FUNC0(kvm, type);
	if (!xive)
		return -ENOMEM;

	dev->private = xive;
	xive->dev = dev;
	xive->kvm = kvm;
	kvm->arch.xive = xive;
	FUNC1(&xive->mapping_lock);
	FUNC1(&xive->lock);

	/*
	 * Allocate a bunch of VPs. KVM_MAX_VCPUS is a large value for
	 * a default. Getting the max number of CPUs the VM was
	 * configured with would improve our usage of the XIVE VP space.
	 */
	xive->vp_base = FUNC3(KVM_MAX_VCPUS);
	FUNC2("VP_Base=%x\n", xive->vp_base);

	if (xive->vp_base == XIVE_INVALID_VP)
		ret = -ENXIO;

	xive->single_escalation = FUNC4();
	xive->ops = &kvmppc_xive_native_ops;

	if (ret)
		return ret;

	return 0;
}