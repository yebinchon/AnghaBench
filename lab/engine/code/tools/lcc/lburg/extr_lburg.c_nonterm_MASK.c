#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ kind; int number; struct TYPE_7__* link; } ;
typedef  TYPE_1__* Nonterm ;

/* Variables and functions */
 scalar_t__ NONTERM ; 
 scalar_t__ TERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char*) ; 
 int ntnumber ; 
 TYPE_1__* nts ; 
 TYPE_1__* start ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

Nonterm FUNC4(char *id) {
	Nonterm p = FUNC2(id), *q = &nts;

	if (p && p->kind == NONTERM)
		return p;
	if (p && p->kind == TERM)
		FUNC3("`%s' is a terminal\n", id);
	p = FUNC1(id);
	p->kind = NONTERM;
	p->number = ++ntnumber;
	if (p->number == 1)
		start = p;
	while (*q && (*q)->number < p->number)
		q = &(*q)->link;
	FUNC0(*q == 0 || (*q)->number != p->number);
	p->link = *q;
	*q = p;
	return p;
}