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
typedef  int u8 ;
typedef  size_t u32 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {size_t* msrpm; } ;
struct TYPE_4__ {size_t* msrpm; TYPE_1__ nested; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t MSR_INVALID ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 size_t FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 
 TYPE_2__* FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC5(struct kvm_vcpu *vcpu, unsigned msr)
{
	u8 bit_write;
	unsigned long tmp;
	u32 offset;
	u32 *msrpm;

	msrpm = FUNC1(vcpu) ? FUNC4(vcpu)->nested.msrpm:
				      FUNC4(vcpu)->msrpm;

	offset    = FUNC2(msr);
	bit_write = 2 * (msr & 0x0f) + 1;
	tmp       = msrpm[offset];

	FUNC0(offset == MSR_INVALID);

	return !!FUNC3(bit_write,  &tmp);
}