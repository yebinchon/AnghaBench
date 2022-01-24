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
struct ref_formatting_stack {int /*<<< orphan*/  output; scalar_t__ at_end_data; struct ref_formatting_stack* prev; } ;
struct if_then_else {scalar_t__ condition_satisfied; scalar_t__ else_atom_seen; int /*<<< orphan*/  then_atom_seen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_then_else*) ; 
 int /*<<< orphan*/  FUNC3 (struct ref_formatting_stack**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ref_formatting_stack **stack)
{
	struct ref_formatting_stack *cur = *stack;
	struct ref_formatting_stack *prev = cur->prev;
	struct if_then_else *if_then_else = (struct if_then_else *)cur->at_end_data;

	if (!if_then_else->then_atom_seen)
		FUNC1(FUNC0("format: %%(if) atom used without a %%(then) atom"));

	if (if_then_else->else_atom_seen) {
		/*
		 * There is an %(else) atom: we need to drop one state from the
		 * stack, either the %(else) branch if the condition is satisfied, or
		 * the %(then) branch if it isn't.
		 */
		if (if_then_else->condition_satisfied) {
			FUNC4(&cur->output);
			FUNC3(&cur);
		} else {
			FUNC5(&cur->output, &prev->output);
			FUNC4(&cur->output);
			FUNC3(&cur);
		}
	} else if (!if_then_else->condition_satisfied) {
		/*
		 * No %(else) atom: just drop the %(then) branch if the
		 * condition is not satisfied.
		 */
		FUNC4(&cur->output);
	}

	*stack = cur;
	FUNC2(if_then_else);
}