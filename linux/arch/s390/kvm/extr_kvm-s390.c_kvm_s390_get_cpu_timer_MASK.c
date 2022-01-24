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
struct TYPE_3__ {scalar_t__ cputm_start; TYPE_2__* sie_block; int /*<<< orphan*/  cputm_seqcount; int /*<<< orphan*/  cputm_enabled; } ;
struct kvm_vcpu {scalar_t__ cpu; TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_4__ {int /*<<< orphan*/  cputm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 

__u64 FUNC9(struct kvm_vcpu *vcpu)
{
	unsigned int seq;
	__u64 value;

	if (FUNC8(!vcpu->arch.cputm_enabled))
		return vcpu->arch.sie_block->cputm;

	FUNC3(); /* protect from TOD sync and vcpu_load/put */
	do {
		seq = FUNC5(&vcpu->arch.cputm_seqcount);
		/*
		 * If the writer would ever execute a read in the critical
		 * section, e.g. in irq context, we have a deadlock.
		 */
		FUNC0((seq & 1) && FUNC7() == vcpu->cpu);
		value = vcpu->arch.sie_block->cputm;
		/* if cputm_start is 0, accounting is being started/stopped */
		if (FUNC2(vcpu->arch.cputm_start))
			value -= FUNC1() - vcpu->arch.cputm_start;
	} while (FUNC6(&vcpu->arch.cputm_seqcount, seq & ~1));
	FUNC4();
	return value;
}