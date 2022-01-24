#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  offset; } ;
struct TYPE_7__ {scalar_t__ sclass; TYPE_2__ x; TYPE_1__* type; } ;
struct TYPE_5__ {int /*<<< orphan*/  align; scalar_t__ size; } ;
typedef  TYPE_3__* Symbol ;

/* Variables and functions */
 scalar_t__ AUTO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  offset ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(Symbol p) {
	FUNC0(p->sclass == AUTO);
	offset = FUNC1(offset + p->type->size, p->type->align);
	p->x.offset = -offset;
	p->x.name = FUNC2(-offset);
}