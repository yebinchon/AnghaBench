#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mat4_t ;
struct TYPE_4__ {scalar_t__ vertFlipBuffer; } ;
struct TYPE_6__ {TYPE_1__ viewParms; } ;
struct TYPE_5__ {int /*<<< orphan*/  modelviewProjection; int /*<<< orphan*/  modelview; int /*<<< orphan*/ * projection; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ backEnd ; 
 TYPE_2__ glState ; 

void FUNC2(mat4_t matrix)
{
	FUNC0(matrix, glState.projection);
	if ( backEnd.viewParms.vertFlipBuffer ) {
		glState.projection[ 1] = -glState.projection[ 1];
		glState.projection[ 5] = -glState.projection[ 5];
		glState.projection[ 9] = -glState.projection[ 9];
		glState.projection[13] = -glState.projection[13];
	}
	FUNC1(glState.projection, glState.modelview, glState.modelviewProjection);
}