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
struct TYPE_3__ {struct grep_expr* right; struct grep_expr* left; } ;
struct TYPE_4__ {TYPE_1__ binary; struct grep_expr* unary; int /*<<< orphan*/  atom; } ;
struct grep_expr {int node; TYPE_2__ u; } ;

/* Variables and functions */
#define  GREP_NODE_AND 132 
#define  GREP_NODE_ATOM 131 
#define  GREP_NODE_NOT 130 
#define  GREP_NODE_OR 129 
#define  GREP_NODE_TRUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(struct grep_expr *x, int in)
{
	FUNC2(in);
	switch (x->node) {
	case GREP_NODE_TRUE:
		FUNC1(stderr, "true\n");
		break;
	case GREP_NODE_ATOM:
		FUNC0(x->u.atom);
		break;
	case GREP_NODE_NOT:
		FUNC1(stderr, "(not\n");
		FUNC3(x->u.unary, in+1);
		FUNC2(in);
		FUNC1(stderr, ")\n");
		break;
	case GREP_NODE_AND:
		FUNC1(stderr, "(and\n");
		FUNC3(x->u.binary.left, in+1);
		FUNC3(x->u.binary.right, in+1);
		FUNC2(in);
		FUNC1(stderr, ")\n");
		break;
	case GREP_NODE_OR:
		FUNC1(stderr, "(or\n");
		FUNC3(x->u.binary.left, in+1);
		FUNC3(x->u.binary.right, in+1);
		FUNC2(in);
		FUNC1(stderr, ")\n");
		break;
	}
}