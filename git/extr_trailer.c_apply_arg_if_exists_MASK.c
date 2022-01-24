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
struct trailer_item {int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int if_exists; } ;
struct arg_item {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  EXISTS_ADD 132 
#define  EXISTS_ADD_IF_DIFFERENT 131 
#define  EXISTS_ADD_IF_DIFFERENT_NEIGHBOR 130 
#define  EXISTS_DO_NOTHING 129 
#define  EXISTS_REPLACE 128 
 int /*<<< orphan*/  FUNC1 (struct trailer_item*,struct arg_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct trailer_item*,struct arg_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct trailer_item*,struct arg_item*,int,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct arg_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct trailer_item*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct trailer_item *in_tok,
				struct arg_item *arg_tok,
				struct trailer_item *on_tok,
				struct list_head *head)
{
	switch (arg_tok->conf.if_exists) {
	case EXISTS_DO_NOTHING:
		FUNC4(arg_tok);
		break;
	case EXISTS_REPLACE:
		FUNC2(in_tok, arg_tok);
		FUNC1(on_tok, arg_tok);
		FUNC6(&in_tok->list);
		FUNC5(in_tok);
		break;
	case EXISTS_ADD:
		FUNC2(in_tok, arg_tok);
		FUNC1(on_tok, arg_tok);
		break;
	case EXISTS_ADD_IF_DIFFERENT:
		FUNC2(in_tok, arg_tok);
		if (FUNC3(in_tok, arg_tok, 1, head))
			FUNC1(on_tok, arg_tok);
		else
			FUNC4(arg_tok);
		break;
	case EXISTS_ADD_IF_DIFFERENT_NEIGHBOR:
		FUNC2(in_tok, arg_tok);
		if (FUNC3(on_tok, arg_tok, 0, head))
			FUNC1(on_tok, arg_tok);
		else
			FUNC4(arg_tok);
		break;
	default:
		FUNC0("trailer.c: unhandled value %d",
		    arg_tok->conf.if_exists);
	}
}