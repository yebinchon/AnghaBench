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

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  align; int /*<<< orphan*/  size; } ;
struct TYPE_13__ {void** syms; } ;
struct TYPE_12__ {TYPE_3__* type; } ;
typedef  TYPE_1__* Symbol ;
typedef  TYPE_2__* Node ;

/* Variables and functions */
 scalar_t__ ADDRL ; 
 scalar_t__ ASGN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (scalar_t__,TYPE_2__*,TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 TYPE_3__* voidptype ; 

__attribute__((used)) static Node FUNC3(Symbol tmp, Node p) {
	p = FUNC1(ASGN + FUNC2(tmp->type),
		FUNC1(ADDRL + FUNC2(voidptype), NULL, NULL, tmp), p, NULL);
	p->syms[0] = FUNC0(tmp->type->size);
	p->syms[1] = FUNC0(tmp->type->align);
	return p;
}