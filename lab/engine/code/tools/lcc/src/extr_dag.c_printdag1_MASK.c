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
struct TYPE_5__ {struct TYPE_5__** kids; } ;
typedef  TYPE_1__* Node ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC4(Node p, int fd, int lev) {
	int id, i;

	if (p == 0 || *FUNC2(id = FUNC1((Tree)p)))
		return;
	*FUNC2(id) = 1;
	for (i = 0; i < FUNC0(p->kids); i++)
		FUNC4(p->kids[i], fd, lev + 1);
	FUNC3(p, fd, lev);
}