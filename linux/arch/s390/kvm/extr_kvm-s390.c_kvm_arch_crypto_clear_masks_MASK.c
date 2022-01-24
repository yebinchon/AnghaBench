#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* crycb; } ;
struct TYPE_4__ {TYPE_3__ crypto; } ;
struct kvm {int /*<<< orphan*/  lock; TYPE_1__ arch; } ;
struct TYPE_5__ {int /*<<< orphan*/  apcb1; int /*<<< orphan*/  apcb0; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_VSIE_RESTART ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct kvm *kvm)
{
	FUNC5(&kvm->lock);
	FUNC2(kvm);

	FUNC4(&kvm->arch.crypto.crycb->apcb0, 0,
	       sizeof(kvm->arch.crypto.crycb->apcb0));
	FUNC4(&kvm->arch.crypto.crycb->apcb1, 0,
	       sizeof(kvm->arch.crypto.crycb->apcb1));

	FUNC0(kvm, 3, "%s", "CLR CRYCB:");
	/* recreate the shadow crycb for each vcpu */
	FUNC1(kvm, KVM_REQ_VSIE_RESTART);
	FUNC3(kvm);
	FUNC6(&kvm->lock);
}