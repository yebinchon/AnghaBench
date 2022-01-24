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
struct moved_entry {int /*<<< orphan*/ * next_line; struct emitted_diff_symbol* es; int /*<<< orphan*/  ent; } ;
struct emitted_diff_symbol {int /*<<< orphan*/  len; int /*<<< orphan*/  line; } ;
struct diff_options {unsigned int color_moved_ws_handling; TYPE_1__* emitted_symbols; } ;
struct TYPE_2__ {struct emitted_diff_symbol* buf; } ;

/* Variables and functions */
 unsigned int XDF_WHITESPACE_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct moved_entry* FUNC2 (int) ; 

__attribute__((used)) static struct moved_entry *FUNC3(struct diff_options *o,
					 int line_no)
{
	struct moved_entry *ret = FUNC2(sizeof(*ret));
	struct emitted_diff_symbol *l = &o->emitted_symbols->buf[line_no];
	unsigned flags = o->color_moved_ws_handling & XDF_WHITESPACE_FLAGS;
	unsigned int hash = FUNC1(l->line, l->len, flags);

	FUNC0(&ret->ent, hash);
	ret->es = l;
	ret->next_line = NULL;

	return ret;
}