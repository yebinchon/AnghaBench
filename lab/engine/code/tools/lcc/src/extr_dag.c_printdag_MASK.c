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
typedef  int /*<<< orphan*/  Tree ;
struct TYPE_5__ {struct TYPE_5__* link; } ;
typedef  TYPE_1__* Node ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* forest ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 

void FUNC4(Node p, int fd) {
	FILE *f = fd == 1 ? stdout : stderr;

	FUNC3(0);
	if (p == 0) {
		if ((p = forest) != NULL)
			do {
				p = p->link;
				FUNC2(p, fd, 0);
			} while (p != forest);
	} else if (*FUNC3(FUNC1((Tree)p)))
		FUNC0(f, "node'%d printed above\n", FUNC1((Tree)p));
	else
		FUNC2(p, fd, 0);
}