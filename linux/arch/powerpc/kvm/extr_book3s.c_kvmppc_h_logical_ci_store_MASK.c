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
typedef  unsigned long u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int H_SUCCESS ; 
 int H_TOO_HARD ; 
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (struct kvm_vcpu*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(struct kvm_vcpu *vcpu)
{
	unsigned long size = FUNC4(vcpu, 4);
	unsigned long addr = FUNC4(vcpu, 5);
	unsigned long val = FUNC4(vcpu, 6);
	u64 buf;
	int srcu_idx;
	int ret;

	switch (size) {
	case 1:
		*(u8 *)&buf = val;
		break;

	case 2:
		*(__be16 *)&buf = FUNC0(val);
		break;

	case 4:
		*(__be32 *)&buf = FUNC1(val);
		break;

	case 8:
		*(__be64 *)&buf = FUNC2(val);
		break;

	default:
		return H_TOO_HARD;
	}

	srcu_idx = FUNC5(&vcpu->kvm->srcu);
	ret = FUNC3(vcpu, KVM_MMIO_BUS, addr, size, &buf);
	FUNC6(&vcpu->kvm->srcu, srcu_idx);
	if (ret != 0)
		return H_TOO_HARD;

	return H_SUCCESS;
}