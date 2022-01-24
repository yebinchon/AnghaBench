#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* link; int /*<<< orphan*/  number; } ;
typedef  TYPE_1__* Nonterm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(Nonterm nts, int ntnumber) {
	Nonterm p;

	for (p = nts; p; p = p->link)
		FUNC0("#define %P%S_NT %d\n", p, p->number);
	FUNC0("\n");
	FUNC0("static char *%Pntname[] = {\n%10,\n");
	for (p = nts; p; p = p->link)
		FUNC0("%1\"%S\",\n", p);
	FUNC0("%10\n};\n\n");
}