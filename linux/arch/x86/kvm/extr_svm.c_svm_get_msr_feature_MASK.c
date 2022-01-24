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
struct kvm_msr_entry {int index; scalar_t__ data; } ;

/* Variables and functions */
#define  MSR_F10H_DECFG 128 
 scalar_t__ MSR_F10H_DECFG_LFENCE_SERIALIZE ; 
 int /*<<< orphan*/  X86_FEATURE_LFENCE_RDTSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct kvm_msr_entry *msr)
{
	msr->data = 0;

	switch (msr->index) {
	case MSR_F10H_DECFG:
		if (FUNC0(X86_FEATURE_LFENCE_RDTSC))
			msr->data |= MSR_F10H_DECFG_LFENCE_SERIALIZE;
		break;
	default:
		return 1;
	}

	return 0;
}