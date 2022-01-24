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
struct kvm_vcpu {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  READING_SHADOW_PAGE_TABLES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	/*
	 * Prevent page table teardown by making any free-er wait during
	 * kvm_flush_remote_tlbs() IPI to all active vcpus.
	 */
	FUNC0();

	/*
	 * Make sure a following spte read is not reordered ahead of the write
	 * to vcpu->mode.
	 */
	FUNC1(vcpu->mode, READING_SHADOW_PAGE_TABLES);
}