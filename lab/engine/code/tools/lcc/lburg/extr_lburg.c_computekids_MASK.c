#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Tree ;
typedef  TYPE_2__* Term ;
struct TYPE_5__ {scalar_t__ kind; int arity; } ;
struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; TYPE_2__* op; } ;

/* Variables and functions */
 scalar_t__ NONTERM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(Tree t, char *v, char *bp, int *ip) {
	Term p = t->op;

	if (p->kind == NONTERM) {
		FUNC0(bp, "\t\tkids[%d] = %s;\n", (*ip)++, v);
		bp += FUNC2(bp);
	} else if (p->arity > 0) {
		bp = FUNC3(t->left, FUNC1("LEFT_CHILD(%s)", v), bp, ip);
		if (p->arity == 2)
			bp = FUNC3(t->right, FUNC1("RIGHT_CHILD(%s)", v), bp, ip);
	}
	return bp;
}