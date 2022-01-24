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
struct xen_hvm_pagetable_dying {int /*<<< orphan*/  gpa; int /*<<< orphan*/  domid; } ;
struct mm_struct {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  HVMOP_pagetable_dying ; 
 int FUNC0 (int /*<<< orphan*/ ,struct xen_hvm_pagetable_dying*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mm_struct *mm)
{
	struct xen_hvm_pagetable_dying a;
	int rc;

	a.domid = DOMID_SELF;
	a.gpa = FUNC2(mm->pgd);
	rc = FUNC0(HVMOP_pagetable_dying, &a);
	FUNC1(rc < 0);
}