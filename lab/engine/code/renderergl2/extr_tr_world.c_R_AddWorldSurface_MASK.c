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
struct TYPE_6__ {int /*<<< orphan*/  cubemapIndex; int /*<<< orphan*/  fogIndex; int /*<<< orphan*/  shader; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ msurface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC4( msurface_t *surf, int dlightBits, int pshadowBits ) {
	// FIXME: bmodel fog?

	// try to cull before dlighting or adding
	if ( FUNC1( surf ) ) {
		return;
	}

	// check for dlighting
	/*if ( dlightBits ) */{
		dlightBits = FUNC2( surf, dlightBits );
		dlightBits = ( dlightBits != 0 );
	}

	// check for pshadows
	/*if ( pshadowBits ) */{
		pshadowBits = FUNC3( surf, pshadowBits);
		pshadowBits = ( pshadowBits != 0 );
	}

	FUNC0( surf->data, surf->shader, surf->fogIndex, dlightBits, pshadowBits, surf->cubemapIndex );
}