#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uiDrawTextLayout ;
typedef  scalar_t__ guint16 ;
typedef  int /*<<< orphan*/  PangoAttribute ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 

void FUNC3(uiDrawTextLayout *layout, int startChar, int endChar, double r, double g, double b, double a)
{
	PangoAttribute *attr;
	guint16 rr, gg, bb, aa;

	rr = (guint16) (r * 65535);
	gg = (guint16) (g * 65535);
	bb = (guint16) (b * 65535);
	aa = (guint16) (a * 65535);

	attr = FUNC2(rr, gg, bb);
	FUNC1(layout, attr, startChar, endChar);

	// TODO what if aa == 0?
	attr = FUNC0(aa);
	if (attr != NULL)
		FUNC1(layout, attr, startChar, endChar);
}