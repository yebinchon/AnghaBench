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
struct TYPE_4__ {int /*<<< orphan*/  cputm_seqcount; TYPE_1__* sie_block; int /*<<< orphan*/  cputm_start; scalar_t__ cputm_enabled; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_3__ {int /*<<< orphan*/  cputm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kvm_vcpu *vcpu, __u64 cputm)
{
	FUNC1(); /* protect from TOD sync and vcpu_load/put */
	FUNC3(&vcpu->arch.cputm_seqcount);
	if (vcpu->arch.cputm_enabled)
		vcpu->arch.cputm_start = FUNC0();
	vcpu->arch.sie_block->cputm = cputm;
	FUNC4(&vcpu->arch.cputm_seqcount);
	FUNC2();
}