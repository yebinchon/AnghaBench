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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {TYPE_1__* loaded_vmcs; } ;
struct TYPE_3__ {unsigned long* msr_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 TYPE_2__* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu, u32 msr)
{
	unsigned long *msr_bitmap;
	int f = sizeof(unsigned long);

	if (!FUNC0())
		return true;

	msr_bitmap = FUNC2(vcpu)->loaded_vmcs->msr_bitmap;

	if (msr <= 0x1fff) {
		return !!FUNC1(msr, msr_bitmap + 0x800 / f);
	} else if ((msr >= 0xc0000000) && (msr <= 0xc0001fff)) {
		msr &= 0x1fff;
		return !!FUNC1(msr, msr_bitmap + 0xc00 / f);
	}

	return true;
}