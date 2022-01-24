#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct grep_pat {scalar_t__ token; struct grep_pat* next; } ;
struct TYPE_3__ {struct grep_expr* right; struct grep_expr* left; } ;
struct TYPE_4__ {TYPE_1__ binary; } ;
struct grep_expr {TYPE_2__ u; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ GREP_AND ; 
 int /*<<< orphan*/  GREP_NODE_AND ; 
 struct grep_expr* FUNC0 (struct grep_pat**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct grep_expr* FUNC2 (int,int) ; 

__attribute__((used)) static struct grep_expr *FUNC3(struct grep_pat **list)
{
	struct grep_pat *p;
	struct grep_expr *x, *y, *z;

	x = FUNC0(list);
	p = *list;
	if (p && p->token == GREP_AND) {
		if (!p->next)
			FUNC1("--and not followed by pattern expression");
		*list = p->next;
		y = FUNC3(list);
		if (!y)
			FUNC1("--and not followed by pattern expression");
		z = FUNC2(1, sizeof (struct grep_expr));
		z->node = GREP_NODE_AND;
		z->u.binary.left = x;
		z->u.binary.right = y;
		return z;
	}
	return x;
}