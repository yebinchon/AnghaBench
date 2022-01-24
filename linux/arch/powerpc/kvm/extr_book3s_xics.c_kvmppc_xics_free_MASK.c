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
struct kvmppc_xics {int max_icsid; struct kvmppc_xics** ics; int /*<<< orphan*/  dentry; struct kvm* kvm; struct kvmppc_xics* private; } ;
struct kvm_device {int max_icsid; struct kvm_device** ics; int /*<<< orphan*/  dentry; struct kvm* kvm; struct kvm_device* private; } ;
struct TYPE_2__ {int /*<<< orphan*/ * xics; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_xics*) ; 

__attribute__((used)) static void FUNC2(struct kvm_device *dev)
{
	struct kvmppc_xics *xics = dev->private;
	int i;
	struct kvm *kvm = xics->kvm;

	FUNC0(xics->dentry);

	if (kvm)
		kvm->arch.xics = NULL;

	for (i = 0; i <= xics->max_icsid; i++)
		FUNC1(xics->ics[i]);
	FUNC1(xics);
	FUNC1(dev);
}