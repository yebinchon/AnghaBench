#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* Tree ;
struct TYPE_11__ {int /*<<< orphan*/  sym; } ;
struct TYPE_12__ {int /*<<< orphan*/  type; struct TYPE_12__** kids; TYPE_1__ u; int /*<<< orphan*/  op; } ;
typedef  int /*<<< orphan*/  Symbol ;

/* Variables and functions */
#define  ASGN 131 
#define  COND 130 
#define  INDIR 129 
#define  RIGHT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 

Tree FUNC7(Tree p) {
	Tree q = p;

	for (;;)
		switch (FUNC2(q->op)) {
		case RIGHT:
			FUNC0(q->kids[0] || q->kids[1]);
			q = q->kids[1] ? q->kids[1] : q->kids[0];
			continue;
		case ASGN:
			q = q->kids[1];
			continue;
		case COND: {
			Symbol t1 = q->u.sym;
			q->u.sym = 0;
			q = FUNC3(t1);
			/* fall through */
			}
		case INDIR:
			if (p == q)
				return q->kids[0];
			q = q->kids[0];
			return FUNC5(RIGHT, q->type, FUNC4(p), q);
		default:
			FUNC1("addressable object required\n");
			return FUNC6(p);
		}
}