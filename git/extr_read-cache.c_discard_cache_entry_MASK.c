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
struct cache_entry {scalar_t__ mem_pool_allocated; int /*<<< orphan*/  ce_namelen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(struct cache_entry *ce)
{
	if (ce && FUNC3())
		FUNC2(ce, 0xCD, FUNC0(ce->ce_namelen));

	if (ce && ce->mem_pool_allocated)
		return;

	FUNC1(ce);
}