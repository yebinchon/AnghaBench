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
struct page {int dummy; } ;
struct kvm {int dummy; } ;
typedef  scalar_t__ hpa_t ;
typedef  int gpa_t ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_MASK ; 
 struct page* FUNC0 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm, gpa_t gpa, hpa_t *hpa)
{
	struct page *page;

	page = FUNC0(kvm, FUNC1(gpa));
	if (FUNC2(page))
		return -EINVAL;
	*hpa = (hpa_t) FUNC3(page) + (gpa & ~PAGE_MASK);
	return 0;
}