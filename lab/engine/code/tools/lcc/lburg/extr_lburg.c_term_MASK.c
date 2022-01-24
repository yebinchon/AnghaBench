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
typedef  TYPE_1__* Term ;
struct TYPE_6__ {int esn; int arity; struct TYPE_6__* link; int /*<<< orphan*/  name; int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  TERM ; 
 TYPE_1__* FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char*) ; 
 TYPE_1__* terms ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

Term FUNC3(char *id, int esn) {
	Term p = FUNC1(id), *q = &terms;

	if (p)
		FUNC2("redefinition of terminal `%s'\n", id);
	else
		p = FUNC0(id);
	p->kind = TERM;
	p->esn = esn;
	p->arity = -1;
	while (*q && (*q)->esn < p->esn)
		q = &(*q)->link;
	if (*q && (*q)->esn == p->esn)
		FUNC2("duplicate external symbol number `%s=%d'\n",
			p->name, p->esn);
	p->link = *q;
	*q = p;
	return p;
}