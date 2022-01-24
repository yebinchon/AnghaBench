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
struct ldt_struct {int nr_entries; scalar_t__ entries; } ;

/* Variables and functions */
 int LDT_ENTRY_SIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ldt_struct*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ldt_struct *ldt)
{
	if (FUNC2(!ldt))
		return;

	FUNC3(ldt->entries, ldt->nr_entries);
	if (ldt->nr_entries * LDT_ENTRY_SIZE > PAGE_SIZE)
		FUNC4(ldt->entries);
	else
		FUNC0((unsigned long)ldt->entries);
	FUNC1(ldt);
}