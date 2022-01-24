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
struct trailer_item {int /*<<< orphan*/ * value; int /*<<< orphan*/  token; } ;
struct arg_item {int /*<<< orphan*/ * value; int /*<<< orphan*/  token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arg_item*) ; 
 struct trailer_item* FUNC1 (int,int) ; 

__attribute__((used)) static struct trailer_item *FUNC2(struct arg_item *arg_tok)
{
	struct trailer_item *new_item = FUNC1(sizeof(*new_item), 1);
	new_item->token = arg_tok->token;
	new_item->value = arg_tok->value;
	arg_tok->token = *(arg_tok->value = NULL);
	FUNC0(arg_tok);
	return new_item;
}