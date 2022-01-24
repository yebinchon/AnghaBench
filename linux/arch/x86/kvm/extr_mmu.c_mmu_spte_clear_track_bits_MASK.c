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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(u64 *sptep)
{
	kvm_pfn_t pfn;
	u64 old_spte = *sptep;

	if (!FUNC11(old_spte))
		FUNC1(sptep, 0ull);
	else
		old_spte = FUNC2(sptep, 0ull);

	if (!FUNC5(old_spte))
		return 0;

	pfn = FUNC12(old_spte);

	/*
	 * KVM does not hold the refcount of the page used by
	 * kvm mmu, before reclaiming the page, we should
	 * unmap it from mmu first.
	 */
	FUNC0(!FUNC6(pfn) && !FUNC9(FUNC10(pfn)));

	if (FUNC3(old_spte))
		FUNC7(pfn);

	if (FUNC4(old_spte))
		FUNC8(pfn);

	return 1;
}