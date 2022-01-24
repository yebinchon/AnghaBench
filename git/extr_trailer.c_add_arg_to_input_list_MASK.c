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
struct TYPE_2__ {int /*<<< orphan*/  where; } ;
struct arg_item {TYPE_1__ conf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct trailer_item* FUNC3 (struct arg_item*) ; 

__attribute__((used)) static void FUNC4(struct trailer_item *on_tok,
				  struct arg_item *arg_tok)
{
	int aoe = FUNC0(arg_tok->conf.where);
	struct trailer_item *to_add = FUNC3(arg_tok);
	if (aoe)
		FUNC1(&to_add->list, &on_tok->list);
	else
		FUNC2(&to_add->list, &on_tok->list);
}