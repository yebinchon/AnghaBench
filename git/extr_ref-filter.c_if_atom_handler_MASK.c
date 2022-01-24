#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct ref_formatting_state {struct ref_formatting_stack* stack; } ;
struct ref_formatting_stack {struct if_then_else* at_end_data; int /*<<< orphan*/  at_end; } ;
struct if_then_else {int /*<<< orphan*/  cmp_status; int /*<<< orphan*/  str; } ;
struct atom_value {TYPE_2__* atom; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmp_status; int /*<<< orphan*/  str; } ;
struct TYPE_6__ {TYPE_1__ if_then_else; } ;
struct TYPE_5__ {TYPE_3__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  if_then_else_handler ; 
 int /*<<< orphan*/  FUNC0 (struct ref_formatting_stack**) ; 
 struct if_then_else* FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct atom_value *atomv, struct ref_formatting_state *state,
			   struct strbuf *unused_err)
{
	struct ref_formatting_stack *new_stack;
	struct if_then_else *if_then_else = FUNC1(sizeof(struct if_then_else), 1);

	if_then_else->str = atomv->atom->u.if_then_else.str;
	if_then_else->cmp_status = atomv->atom->u.if_then_else.cmp_status;

	FUNC0(&state->stack);
	new_stack = state->stack;
	new_stack->at_end = if_then_else_handler;
	new_stack->at_end_data = if_then_else;
	return 0;
}