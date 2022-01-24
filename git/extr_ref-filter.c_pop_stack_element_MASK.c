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
struct ref_formatting_stack {int /*<<< orphan*/  output; struct ref_formatting_stack* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_formatting_stack*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ref_formatting_stack **stack)
{
	struct ref_formatting_stack *current = *stack;
	struct ref_formatting_stack *prev = current->prev;

	if (prev)
		FUNC1(&prev->output, &current->output);
	FUNC2(&current->output);
	FUNC0(current);
	*stack = prev;
}