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
typedef  int /*<<< orphan*/ * picoVec3_t ;
struct TYPE_6__ {TYPE_1__* model; int /*<<< orphan*/ * xyz; } ;
typedef  TYPE_2__ picoSurface_t ;
struct TYPE_5__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3( picoSurface_t *surface, int num, picoVec3_t xyz ){
	if ( surface == NULL || num < 0 || xyz == NULL ) {
		return;
	}
	if ( !FUNC0( surface, num + 1, 0, 0, 0, 0 ) ) {
		return;
	}
	FUNC1( xyz, surface->xyz[ num ] );
	if ( surface->model != NULL ) {
		FUNC2( xyz, surface->model->mins, surface->model->maxs );
	}
}