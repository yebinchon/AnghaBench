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
struct TYPE_2__ {int if_missing; int where; } ;
struct arg_item {TYPE_1__ conf; } ;
typedef  enum trailer_where { ____Placeholder_trailer_where } trailer_where ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  MISSING_ADD 129 
#define  MISSING_DO_NOTHING 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct arg_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct arg_item*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct trailer_item* FUNC6 (struct arg_item*) ; 

__attribute__((used)) static void FUNC7(struct list_head *head,
				 struct arg_item *arg_tok)
{
	enum trailer_where where;
	struct trailer_item *to_add;

	switch (arg_tok->conf.if_missing) {
	case MISSING_DO_NOTHING:
		FUNC3(arg_tok);
		break;
	case MISSING_ADD:
		where = arg_tok->conf.where;
		FUNC2(NULL, arg_tok);
		to_add = FUNC6(arg_tok);
		if (FUNC1(where))
			FUNC5(&to_add->list, head);
		else
			FUNC4(&to_add->list, head);
		break;
	default:
		FUNC0("trailer.c: unhandled value %d",
		    arg_tok->conf.if_missing);
	}
}