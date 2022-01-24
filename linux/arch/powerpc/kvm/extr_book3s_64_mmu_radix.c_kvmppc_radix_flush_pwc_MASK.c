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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  H_TLB_INVALIDATE ; 
 int /*<<< orphan*/  TLBIEL_INVAL_SET_LPID ; 
 int /*<<< orphan*/  FUNC1 () ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(struct kvm *kvm, unsigned int lpid)
{
	long rc;

	if (!FUNC1()) {
		FUNC4(lpid);
		return;
	}

	rc = FUNC2(H_TLB_INVALIDATE, FUNC0(1, 0, 1),
				lpid, TLBIEL_INVAL_SET_LPID);
	if (rc)
		FUNC3("KVM: TLB PWC invalidation hcall failed, rc=%ld\n", rc);
}