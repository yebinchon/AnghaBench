#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* Tree ;
struct TYPE_11__ {int /*<<< orphan*/ * loc; } ;
struct TYPE_12__ {TYPE_1__ c; } ;
struct TYPE_15__ {TYPE_2__ u; } ;
struct TYPE_13__ {int /*<<< orphan*/ * sym; int /*<<< orphan*/  v; } ;
struct TYPE_14__ {TYPE_3__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_5__* Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRG ; 
 int /*<<< orphan*/  GLOBAL ; 
 int /*<<< orphan*/  STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

Tree FUNC6(Tree p) {
	Symbol q = FUNC1(p->type, p->u.v);
	Tree e;

	if (q->u.c.loc == NULL)
		q->u.c.loc = FUNC2(STATIC, p->type, GLOBAL);
	if (FUNC4(p->type)) {
		e = FUNC5(ADDRG, FUNC0(p->type), NULL, NULL);
		e->u.sym = q->u.c.loc;
	} else
		e = FUNC3(q->u.c.loc);
	return e;
}