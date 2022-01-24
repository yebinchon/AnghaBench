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
struct s390_io_adapter {int /*<<< orphan*/  isc; int /*<<< orphan*/  id; int /*<<< orphan*/  suppressible; } ;
struct kvm_s390_interrupt {int /*<<< orphan*/  parm64; int /*<<< orphan*/  parm; int /*<<< orphan*/  type; } ;
struct kvm_s390_float_interrupt {int nimm; int simm; int /*<<< orphan*/  ais_lock; } ;
struct TYPE_2__ {struct kvm_s390_float_interrupt float_int; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KVM_S390_AIS_MODE_SINGLE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kvm*,struct kvm_s390_interrupt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct kvm *kvm,
				struct s390_io_adapter *adapter)
{
	struct kvm_s390_float_interrupt *fi = &kvm->arch.float_int;
	struct kvm_s390_interrupt s390int = {
		.type = FUNC1(1, 0, 0, 0),
		.parm = 0,
		.parm64 = FUNC2(adapter->isc),
	};
	int ret = 0;

	if (!FUNC6(kvm, 72) || !adapter->suppressible)
		return FUNC3(kvm, &s390int);

	FUNC4(&fi->ais_lock);
	if (fi->nimm & FUNC0(adapter->isc)) {
		FUNC7(adapter->id, adapter->isc);
		goto out;
	}

	ret = FUNC3(kvm, &s390int);
	if (!ret && (fi->simm & FUNC0(adapter->isc))) {
		fi->nimm |= FUNC0(adapter->isc);
		FUNC8(adapter->isc,
					       KVM_S390_AIS_MODE_SINGLE, 2);
	}
out:
	FUNC5(&fi->ais_lock);
	return ret;
}