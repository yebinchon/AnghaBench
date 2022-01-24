#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ refcnt; int /*<<< orphan*/  commit; int /*<<< orphan*/  blob; struct TYPE_4__* previous; } ;
typedef  TYPE_1__ git_blame__origin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(git_blame__origin *o)
{
	if (o && --o->refcnt <= 0) {
		if (o->previous)
			FUNC3(o->previous);
		FUNC1(o->blob);
		FUNC2(o->commit);
		FUNC0(o);
	}
}