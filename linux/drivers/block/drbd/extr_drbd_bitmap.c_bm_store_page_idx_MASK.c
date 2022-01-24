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

/* Variables and functions */
 unsigned long BM_PAGE_IDX_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct page *page, unsigned long idx)
{
	FUNC0(0 != (idx & ~BM_PAGE_IDX_MASK));
	FUNC1(page, idx);
}