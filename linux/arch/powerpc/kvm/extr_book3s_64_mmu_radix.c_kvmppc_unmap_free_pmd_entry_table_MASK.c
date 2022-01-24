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
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kvm *kvm, pmd_t *pmd,
					unsigned long gpa, unsigned int lpid)
{
	pte_t *pte = FUNC3(pmd, 0);

	/*
	 * Clearing the pmd entry then flushing the PWC ensures that the pte
	 * page no longer be cached by the MMU, so can be freed without
	 * flushing the PWC again.
	 */
	FUNC2(pmd);
	FUNC0(kvm, lpid);

	FUNC1(kvm, pte, false, lpid);
}