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
struct mm_struct {int dummy; } ;
struct TYPE_3__ {struct mm_struct guest_user_mm; struct mm_struct guest_kernel_mm; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int PF_VCPU ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu, int cpu)
{
	struct mm_struct *kern_mm = &vcpu->arch.guest_kernel_mm;
	struct mm_struct *user_mm = &vcpu->arch.guest_user_mm;
	struct mm_struct *mm;

	/*
	 * Were we in guest context? If so, restore the appropriate ASID based
	 * on the mode of the Guest (Kernel/User).
	 */
	if (current->flags & PF_VCPU) {
		mm = FUNC0(vcpu) ? kern_mm : user_mm;
		FUNC1(mm);
		FUNC3(cpu);
		FUNC2();
	}

	return 0;
}