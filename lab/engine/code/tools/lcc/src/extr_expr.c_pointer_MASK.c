#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Tree ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

Tree FUNC5(Tree p) {
	if (FUNC1(p->type))
		/* assert(p->op != RIGHT || p->u.sym == NULL), */
		p = FUNC4(p, FUNC0(p->type));
	else if (FUNC2(p->type))
		p = FUNC4(p, FUNC3(p->type));
	return p;
}