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
struct TYPE_2__ {int /*<<< orphan*/  walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct kvm_vcpu *vcpu, gfn_t gfn,
			       void *data, int offset, int len, u32 access)
{
	return FUNC0(vcpu, vcpu->arch.walk_mmu, gfn,
				       data, offset, len, access);
}