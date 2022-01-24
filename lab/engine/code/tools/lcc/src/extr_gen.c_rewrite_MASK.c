#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ inst; } ;
struct TYPE_14__ {TYPE_1__ x; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* _label ) (TYPE_3__*) ;} ;
struct TYPE_11__ {TYPE_2__ x; } ;
typedef  TYPE_3__* Node ;

/* Variables and functions */
 TYPE_10__* IR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC8(Node p) {
	FUNC0(p->x.inst == 0);
	FUNC5(p);
	FUNC1(FUNC3(p));
	FUNC1(FUNC4(stderr, "\n"));
	(*IR->x._label)(p);
	FUNC1(FUNC2(p, 1, 0));
	FUNC6(p, 1);
}