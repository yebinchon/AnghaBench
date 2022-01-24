#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {double M12; double M21; double M31; double M32; } ;
typedef  TYPE_1__ uiDrawMatrix ;

/* Variables and functions */
 double FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(uiDrawMatrix *m, double x, double y, double xamount, double yamount)
{
	uiDrawMatrix n;

	FUNC2(&n);
	// TODO explain this
	n.M12 = FUNC0(yamount);
	n.M21 = FUNC0(xamount);
	n.M31 = -y * FUNC0(xamount);
	n.M32 = -x * FUNC0(yamount);
	FUNC1(m, &n);
}