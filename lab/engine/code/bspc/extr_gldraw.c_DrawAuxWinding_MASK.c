#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int numpoints; int /*<<< orphan*/ ** p; } ;
typedef  TYPE_1__ winding_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_LINE_LOOP ; 
 int /*<<< orphan*/  GL_POLYGON ; 
 int /*<<< orphan*/  drawflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5 (winding_t *w)
{
	int		i;

	if (!drawflag)
		return;

	FUNC1 (0,0,0,0.5);
	FUNC0 (GL_LINE_LOOP);
	for (i=0 ; i<w->numpoints ; i++)
		FUNC4 (w->p[i][0],w->p[i][1],w->p[i][2] );
	FUNC2 ();

	FUNC1 (1,0,0,0.3);
	FUNC0 (GL_POLYGON);
	for (i=0 ; i<w->numpoints ; i++)
		FUNC4 (w->p[i][0],w->p[i][1],w->p[i][2] );
	FUNC2 ();

	FUNC3 ();
}