#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct topa {scalar_t__ last; } ;
struct topa_page {struct topa topa; } ;
struct page {int dummy; } ;
typedef  int gfp_t ;
struct TYPE_2__ {int base; int end; } ;

/* Variables and functions */
 int /*<<< orphan*/  PT_CAP_topa_multiple_entries ; 
 TYPE_1__* FUNC0 (struct topa*,int) ; 
 int TOPA_SHIFT ; 
 int __GFP_ZERO ; 
 struct page* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct topa_page* FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 

__attribute__((used)) static struct topa *FUNC6(int cpu, gfp_t gfp)
{
	int node = FUNC2(cpu);
	struct topa_page *tp;
	struct page *p;

	p = FUNC1(node, gfp | __GFP_ZERO, 0);
	if (!p)
		return NULL;

	tp = FUNC4(p);
	tp->topa.last = 0;

	/*
	 * In case of singe-entry ToPA, always put the self-referencing END
	 * link as the 2nd entry in the table
	 */
	if (!FUNC3(PT_CAP_topa_multiple_entries)) {
		FUNC0(&tp->topa, 1)->base = FUNC5(p) >> TOPA_SHIFT;
		FUNC0(&tp->topa, 1)->end = 1;
	}

	return &tp->topa;
}