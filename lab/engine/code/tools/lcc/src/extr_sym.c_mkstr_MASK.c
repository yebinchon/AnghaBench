#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* p; } ;
typedef  TYPE_3__ Value ;
struct TYPE_8__ {int /*<<< orphan*/ * loc; } ;
struct TYPE_9__ {TYPE_1__ c; } ;
struct TYPE_11__ {int /*<<< orphan*/  type; TYPE_2__ u; } ;
typedef  TYPE_4__* Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL ; 
 int /*<<< orphan*/  STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chartype ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,TYPE_3__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 

Symbol FUNC4(char *str) {
	Value v;
	Symbol p;

	v.p = str;
	p = FUNC1(FUNC0(chartype, FUNC3(v.p) + 1, 0), v);
	if (p->u.c.loc == NULL)
		p->u.c.loc = FUNC2(STATIC, p->type, GLOBAL);
	return p;
}