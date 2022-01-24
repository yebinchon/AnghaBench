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
struct kvm_nested_guest {unsigned int l1_lpid; long shadow_lpid; int radix; int /*<<< orphan*/  shadow_pgtable; int /*<<< orphan*/  prev_cpu; int /*<<< orphan*/  tlb_lock; struct kvm* l1_host; } ;
struct kvm {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_nested_guest*) ; 
 long FUNC1 () ; 
 struct kvm_nested_guest* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct kvm_nested_guest *FUNC7(struct kvm *kvm, unsigned int lpid)
{
	struct kvm_nested_guest *gp;
	long shadow_lpid;

	gp = FUNC2(sizeof(*gp), GFP_KERNEL);
	if (!gp)
		return NULL;
	gp->l1_host = kvm;
	gp->l1_lpid = lpid;
	FUNC4(&gp->tlb_lock);
	gp->shadow_pgtable = FUNC5(kvm->mm);
	if (!gp->shadow_pgtable)
		goto out_free;
	shadow_lpid = FUNC1();
	if (shadow_lpid < 0)
		goto out_free2;
	gp->shadow_lpid = shadow_lpid;
	gp->radix = 1;

	FUNC3(gp->prev_cpu, -1, sizeof(gp->prev_cpu));

	return gp;

 out_free2:
	FUNC6(kvm->mm, gp->shadow_pgtable);
 out_free:
	FUNC0(gp);
	return NULL;
}