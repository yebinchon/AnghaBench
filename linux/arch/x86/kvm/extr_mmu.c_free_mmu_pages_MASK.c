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
struct kvm_mmu {scalar_t__ lm_root; scalar_t__ pae_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 

__attribute__((used)) static void FUNC1(struct kvm_mmu *mmu)
{
	FUNC0((unsigned long)mmu->pae_root);
	FUNC0((unsigned long)mmu->lm_root);
}