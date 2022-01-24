#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  layout; } ;
typedef  TYPE_1__ uiDrawTextLayout ;
struct TYPE_6__ {int /*<<< orphan*/  cr; } ;
typedef  TYPE_2__ uiDrawContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(uiDrawContext *c, uiDrawTextLayout *tl, double x, double y)
{
	// TODO have an implicit save/restore on each drawing functions instead? and is this correct?
	FUNC1(c->cr, 0.0, 0.0, 0.0);
	FUNC0(c->cr, x, y);
	FUNC2(c->cr, tl->layout);
}