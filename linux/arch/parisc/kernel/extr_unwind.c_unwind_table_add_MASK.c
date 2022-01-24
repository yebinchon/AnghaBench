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
struct unwind_table_entry {int dummy; } ;
struct unwind_table {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_USER ; 
 struct unwind_table* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  unwind_lock ; 
 int /*<<< orphan*/  FUNC4 (struct unwind_table*,char const*,unsigned long,unsigned long,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct unwind_table_entry*,struct unwind_table_entry*) ; 
 int /*<<< orphan*/  unwind_tables ; 

struct unwind_table *
FUNC6(const char *name, unsigned long base_addr, 
		 unsigned long gp,
                 void *start, void *end)
{
	struct unwind_table *table;
	unsigned long flags;
	struct unwind_table_entry *s = (struct unwind_table_entry *)start;
	struct unwind_table_entry *e = (struct unwind_table_entry *)end;

	FUNC5(s, e);

	table = FUNC0(sizeof(struct unwind_table), GFP_USER);
	if (table == NULL)
		return NULL;
	FUNC4(table, name, base_addr, gp, start, end);
	FUNC2(&unwind_lock, flags);
	FUNC1(&table->list, &unwind_tables);
	FUNC3(&unwind_lock, flags);

	return table;
}