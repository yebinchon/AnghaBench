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
struct TYPE_4__ {int /*<<< orphan*/  sym; struct expr* expr; } ;
struct TYPE_3__ {int /*<<< orphan*/  sym; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;

/* Variables and functions */
 scalar_t__ DEBUG_EXPR ; 
#define  E_AND 140 
#define  E_EQUAL 139 
#define  E_GEQ 138 
#define  E_GTH 137 
#define  E_LEQ 136 
#define  E_LIST 135 
#define  E_LTH 134 
#define  E_NONE 133 
#define  E_NOT 132 
#define  E_OR 131 
#define  E_RANGE 130 
#define  E_SYMBOL 129 
#define  E_UNEQUAL 128 
 struct expr* FUNC0 (struct expr*) ; 
 int /*<<< orphan*/  FUNC1 (struct expr**,struct expr**) ; 
 int /*<<< orphan*/  FUNC2 (struct expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct expr*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int trans_count ; 

__attribute__((used)) static int FUNC5(struct expr *e1, struct expr *e2)
{
	int res, old_count;

	if (e1->type != e2->type)
		return 0;
	switch (e1->type) {
	case E_EQUAL:
	case E_GEQ:
	case E_GTH:
	case E_LEQ:
	case E_LTH:
	case E_UNEQUAL:
		return e1->left.sym == e2->left.sym && e1->right.sym == e2->right.sym;
	case E_SYMBOL:
		return e1->left.sym == e2->left.sym;
	case E_NOT:
		return FUNC5(e1->left.expr, e2->left.expr);
	case E_AND:
	case E_OR:
		e1 = FUNC0(e1);
		e2 = FUNC0(e2);
		old_count = trans_count;
		FUNC1(&e1, &e2);
		res = (e1->type == E_SYMBOL && e2->type == E_SYMBOL &&
		       e1->left.sym == e2->left.sym);
		FUNC3(e1);
		FUNC3(e2);
		trans_count = old_count;
		return res;
	case E_LIST:
	case E_RANGE:
	case E_NONE:
		/* panic */;
	}

	if (DEBUG_EXPR) {
		FUNC2(e1, stdout);
		FUNC4(" = ");
		FUNC2(e2, stdout);
		FUNC4(" ?\n");
	}

	return 0;
}