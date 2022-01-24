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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long HPAGE_MASK ; 
 int /*<<< orphan*/  HPAGE_SIZE ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ RGN_HPAGE ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 

struct page *FUNC5(struct mm_struct *mm, unsigned long addr, int write)
{
	struct page *page;
	pte_t *ptep;

	if (FUNC1(addr) != RGN_HPAGE)
		return FUNC0(-EINVAL);

	ptep = FUNC2(mm, addr, HPAGE_SIZE);
	if (!ptep || FUNC3(*ptep))
		return NULL;
	page = FUNC4(*ptep);
	page += ((addr & ~HPAGE_MASK) >> PAGE_SHIFT);
	return page;
}