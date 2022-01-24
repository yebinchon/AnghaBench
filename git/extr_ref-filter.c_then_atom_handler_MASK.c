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
struct strbuf {int dummy; } ;
struct ref_formatting_state {struct ref_formatting_stack* stack; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; scalar_t__ len; } ;
struct ref_formatting_stack {scalar_t__ at_end; TYPE_1__ output; scalar_t__ at_end_data; } ;
struct if_then_else {int then_atom_seen; scalar_t__ cmp_status; int condition_satisfied; int /*<<< orphan*/  str; scalar_t__ else_atom_seen; } ;
struct atom_value {int dummy; } ;

/* Variables and functions */
 scalar_t__ COMPARE_EQUAL ; 
 scalar_t__ COMPARE_UNEQUAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ if_then_else_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct atom_value *atomv, struct ref_formatting_state *state,
			     struct strbuf *err)
{
	struct ref_formatting_stack *cur = state->stack;
	struct if_then_else *if_then_else = NULL;

	if (cur->at_end == if_then_else_handler)
		if_then_else = (struct if_then_else *)cur->at_end_data;
	if (!if_then_else)
		return FUNC2(err, -1, FUNC0("format: %%(then) atom used without an %%(if) atom"));
	if (if_then_else->then_atom_seen)
		return FUNC2(err, -1, FUNC0("format: %%(then) atom used more than once"));
	if (if_then_else->else_atom_seen)
		return FUNC2(err, -1, FUNC0("format: %%(then) atom used after %%(else)"));
	if_then_else->then_atom_seen = 1;
	/*
	 * If the 'equals' or 'notequals' attribute is used then
	 * perform the required comparison. If not, only non-empty
	 * strings satisfy the 'if' condition.
	 */
	if (if_then_else->cmp_status == COMPARE_EQUAL) {
		if (!FUNC4(if_then_else->str, cur->output.buf))
			if_then_else->condition_satisfied = 1;
	} else if (if_then_else->cmp_status == COMPARE_UNEQUAL) {
		if (FUNC4(if_then_else->str, cur->output.buf))
			if_then_else->condition_satisfied = 1;
	} else if (cur->output.len && !FUNC1(cur->output.buf))
		if_then_else->condition_satisfied = 1;
	FUNC3(&cur->output);
	return 0;
}