#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * picoVec3_t ;
struct TYPE_4__ {int /*<<< orphan*/ * faceNormal; } ;
typedef  TYPE_1__ picoSurface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2( picoSurface_t *surface, int num, picoVec3_t normal ){
	if ( surface == NULL || num < 0 || normal == NULL ) {
		return;
	}
	if ( !FUNC0( surface, 0, 0, 0, 0, num + 1 ) ) {
		return;
	}
	FUNC1( normal, surface->faceNormal[ num ] );
}