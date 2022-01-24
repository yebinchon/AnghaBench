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
typedef  size_t u32 ;
struct TYPE_3__ {int /*<<< orphan*/ * gfns; } ;
struct TYPE_4__ {TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_PF_PER_VCPU ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct kvm_vcpu *vcpu, gfn_t gfn)
{
	int i;
	u32 key = FUNC0(gfn);

	for (i = 0; i < FUNC2(ASYNC_PF_PER_VCPU) &&
		     (vcpu->arch.apf.gfns[key] != gfn &&
		      vcpu->arch.apf.gfns[key] != ~0); i++)
		key = FUNC1(key);

	return key;
}