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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int H_SUCCESS ; 
 int H_TOO_HARD ; 
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10(struct kvm_vcpu *vcpu)
{
	unsigned long size = FUNC6(vcpu, 4);
	unsigned long addr = FUNC6(vcpu, 5);
	u64 buf;
	int srcu_idx;
	int ret;

	if (!FUNC4(size) || (size > sizeof(buf)))
		return H_TOO_HARD;

	srcu_idx = FUNC8(&vcpu->kvm->srcu);
	ret = FUNC5(vcpu, KVM_MMIO_BUS, addr, size, &buf);
	FUNC9(&vcpu->kvm->srcu, srcu_idx);
	if (ret != 0)
		return H_TOO_HARD;

	switch (size) {
	case 1:
		FUNC7(vcpu, 4, *(u8 *)&buf);
		break;

	case 2:
		FUNC7(vcpu, 4, FUNC1(*(__be16 *)&buf));
		break;

	case 4:
		FUNC7(vcpu, 4, FUNC2(*(__be32 *)&buf));
		break;

	case 8:
		FUNC7(vcpu, 4, FUNC3(*(__be64 *)&buf));
		break;

	default:
		FUNC0();
	}

	return H_SUCCESS;
}