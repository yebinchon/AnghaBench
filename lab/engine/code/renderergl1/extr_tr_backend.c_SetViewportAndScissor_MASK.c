#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  viewportHeight; int /*<<< orphan*/  viewportWidth; int /*<<< orphan*/  viewportY; int /*<<< orphan*/  viewportX; int /*<<< orphan*/  projectionMatrix; } ;
struct TYPE_4__ {TYPE_1__ viewParms; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 TYPE_2__ backEnd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( void ) {
	FUNC1(GL_PROJECTION);
	FUNC0( backEnd.viewParms.projectionMatrix );
	FUNC1(GL_MODELVIEW);

	// set the window clipping
	FUNC3( backEnd.viewParms.viewportX, backEnd.viewParms.viewportY, 
		backEnd.viewParms.viewportWidth, backEnd.viewParms.viewportHeight );
	FUNC2( backEnd.viewParms.viewportX, backEnd.viewParms.viewportY, 
		backEnd.viewParms.viewportWidth, backEnd.viewParms.viewportHeight );
}