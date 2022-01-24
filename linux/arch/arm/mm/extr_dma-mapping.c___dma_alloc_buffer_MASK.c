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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned long) ; 

__attribute__((used)) static struct page *FUNC5(struct device *dev, size_t size,
				       gfp_t gfp, int coherent_flag)
{
	unsigned long order = FUNC3(size);
	struct page *page, *p, *e;

	page = FUNC2(gfp, order);
	if (!page)
		return NULL;

	/*
	 * Now split the huge page and free the excess pages
	 */
	FUNC4(page, order);
	for (p = page + (size >> PAGE_SHIFT), e = page + (1 << order); p < e; p++)
		FUNC1(p);

	FUNC0(page, size, coherent_flag);

	return page;
}