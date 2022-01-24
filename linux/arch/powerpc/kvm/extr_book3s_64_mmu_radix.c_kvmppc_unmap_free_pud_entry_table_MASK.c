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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct kvm *kvm, pud_t *pud,
					unsigned long gpa, unsigned int lpid)
{
	pmd_t *pmd = FUNC2(pud, 0);

	/*
	 * Clearing the pud entry then flushing the PWC ensures that the pmd
	 * page and any children pte pages will no longer be cached by the MMU,
	 * so can be freed without flushing the PWC again.
	 */
	FUNC3(pud);
	FUNC0(kvm, lpid);

	FUNC1(kvm, pmd, false, lpid);
}