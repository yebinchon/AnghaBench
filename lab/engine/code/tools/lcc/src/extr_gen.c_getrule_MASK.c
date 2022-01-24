#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int (* _rule ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_11__ {TYPE_1__ x; } ;
struct TYPE_9__ {int /*<<< orphan*/  state; } ;
struct TYPE_10__ {int /*<<< orphan*/  op; TYPE_2__ x; } ;
typedef  TYPE_3__* Node ;

/* Variables and functions */
 TYPE_7__* IR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(Node p, int nt) {
	int rulenum;

	FUNC0(p);
	rulenum = (*IR->x._rule)(p->x.state, nt);
	if (!rulenum) {
		FUNC1(stderr, "(%x->op=%s at %w is corrupt.)\n", p, FUNC2(p->op), &src);
		FUNC0(0);
	}
	return rulenum;
}