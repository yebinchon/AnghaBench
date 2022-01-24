#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {scalar_t__ vm86_active; } ;
struct TYPE_5__ {TYPE_1__ rmode; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct kvm_segment*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 

__attribute__((used)) static u64 FUNC3(struct kvm_vcpu *vcpu, int seg)
{
	struct kvm_segment s;

	if (FUNC0(vcpu)->rmode.vm86_active) {
		FUNC1(vcpu, &s, seg);
		return s.base;
	}
	return FUNC2(FUNC0(vcpu), seg);
}