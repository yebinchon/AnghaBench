#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int emitted; int /*<<< orphan*/  inst; scalar_t__ equatable; int /*<<< orphan*/  registered; TYPE_2__* next; } ;
struct TYPE_9__ {TYPE_1__ x; } ;
typedef  TYPE_2__* Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5(Node p) {
	for (; p; p = p->x.next) {
		FUNC0(p->x.registered);
		if ((p->x.equatable && FUNC3(p)) || FUNC2(p))
			;
		else
			FUNC1)(p, p->x.inst);
		p->x.emitted = 1;
	}
}