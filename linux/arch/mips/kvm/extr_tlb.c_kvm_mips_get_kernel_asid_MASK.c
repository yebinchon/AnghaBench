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
struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct guest_kernel_mm; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct mm_struct*) ; 
 int FUNC1 () ; 

__attribute__((used)) static u32 FUNC2(struct kvm_vcpu *vcpu)
{
	struct mm_struct *kern_mm = &vcpu->arch.guest_kernel_mm;
	int cpu = FUNC1();

	return FUNC0(cpu, kern_mm);
}