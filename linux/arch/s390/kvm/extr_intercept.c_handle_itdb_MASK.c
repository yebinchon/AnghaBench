#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm_s390_itdb {int dummy; } ;
struct TYPE_5__ {int per_flags; } ;
struct TYPE_8__ {TYPE_1__ thread; } ;
struct TYPE_6__ {scalar_t__ itdba; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int PER_FLAG_NO_TE ; 
 int /*<<< orphan*/  __LC_PGM_TDB ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_s390_itdb*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,struct kvm_s390_itdb*,int) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	struct kvm_s390_itdb *itdb;
	int rc;

	if (!FUNC1(vcpu) || !FUNC0(vcpu))
		return 0;
	if (current->thread.per_flags & PER_FLAG_NO_TE)
		return 0;
	itdb = (struct kvm_s390_itdb *)vcpu->arch.sie_block->itdba;
	rc = FUNC3(vcpu, __LC_PGM_TDB, itdb, sizeof(*itdb));
	if (rc)
		return rc;
	FUNC2(itdb, 0, sizeof(*itdb));

	return 0;
}