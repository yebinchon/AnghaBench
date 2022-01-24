#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct kvm_run*,struct kvm_vcpu*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct kvm_run*,struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC2(u32 cause, u32 *opc, struct kvm_run *run,
			       struct kvm_vcpu *vcpu, bool store)
{
	if (store)
		return FUNC1(cause, opc, run, vcpu);
	else
		return FUNC0(cause, opc, run, vcpu);
}