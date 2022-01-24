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
struct tree_content {scalar_t__ entry_count; int /*<<< orphan*/  entries; int /*<<< orphan*/  delta_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct tree_content* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_content*) ; 

__attribute__((used)) static struct tree_content *FUNC3(
	struct tree_content *t,
	int amt)
{
	struct tree_content *r = FUNC1(t->entry_count + amt);
	r->entry_count = t->entry_count;
	r->delta_depth = t->delta_depth;
	FUNC0(r->entries, t->entries, t->entry_count);
	FUNC2(t);
	return r;
}