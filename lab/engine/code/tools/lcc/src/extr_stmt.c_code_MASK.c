#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int kind; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef  TYPE_1__* Code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* codelist ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

Code FUNC3(int kind) {
	Code cp;

	if (!FUNC1(kind))
		FUNC2("unreachable code\n");

	FUNC0(cp, FUNC);
	cp->kind = kind;
	cp->prev = codelist;
	cp->next = NULL;
	codelist->next = cp;
	codelist = cp;
	return cp;
}