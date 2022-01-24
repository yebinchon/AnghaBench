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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PTRS_PER_PTE ; 
 int /*<<< orphan*/  _PAGE_INVALID ; 
 int /*<<< orphan*/  base_pgt_cache ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(void)
{
	u64 *table;

	table = FUNC0(base_pgt_cache, GFP_KERNEL);
	if (table)
		FUNC1(table, _PAGE_INVALID, PTRS_PER_PTE);
	return (unsigned long) table;
}