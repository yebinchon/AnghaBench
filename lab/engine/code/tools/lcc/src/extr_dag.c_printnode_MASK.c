#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tree ;
struct TYPE_5__ {char name; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {TYPE_3__** syms; int /*<<< orphan*/  op; TYPE_3__** kids; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__* Node ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CALL ; 
 int FUNC0 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static void FUNC5(Node p, int fd, int lev) {
	if (p) {
		FILE *f = fd == 1 ? stdout : stderr;
		int i, id = FUNC3((Tree)p);
		FUNC1(f, "%c%d%s", lev == 0 ? '\'' : '#', id,
			&"   "[id < 10 ? 0 : id < 100 ? 1 : 2]);
		FUNC1(f, "%s count=%d", FUNC4(p->op), p->count);
		for (i = 0; i < FUNC0(p->kids) && p->kids[i]; i++)
			FUNC1(f, " #%d", FUNC3((Tree)p->kids[i]));
		if (FUNC2(p->op) == CALL && p->syms[0] && p->syms[0]->type)
			FUNC1(f, " {%t}", p->syms[0]->type);
		else
			for (i = 0; i < FUNC0(p->syms) && p->syms[i]; i++)
				if (p->syms[i]->name)
					FUNC1(f, " %s", p->syms[i]->name);
				else
					FUNC1(f, " %p", p->syms[i]);
		FUNC1(f, "\n");
	}
}