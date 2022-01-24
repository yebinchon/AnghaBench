#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_7__ {int /*<<< orphan*/  angles; int /*<<< orphan*/  origin; } ;
struct TYPE_8__ {int flags; float randomAngleRange; TYPE_1__ s; } ;
typedef  TYPE_2__ gentity_t ;

/* Variables and functions */
 int FL_NO_BOTS ; 
 int FL_NO_HUMANS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float*) ; 
 float FUNC4 () ; 

gentity_t *FUNC5(vec3_t origin, vec3_t angles, qboolean isbot) {
	float spot_count = 0;
	gentity_t * spot = NULL;
	gentity_t * best_spot = NULL;
	const char* classname = "info_player_deathmatch";
	while ( ( spot = FUNC1( spot, FUNC0(classname), classname ) ) != NULL ) {
		if ( ( (spot->flags & FL_NO_BOTS) && isbot) || ((spot->flags & FL_NO_HUMANS) && !isbot) )
			continue;

		if ( FUNC2( spot ) ) {
			// Ensure we have one good spot, in case they're all telefrag spots.
			if ( best_spot == NULL ) {
				best_spot = spot;
			}
			continue;
		}

		spot_count += 1.0f;
		if ( FUNC4() * spot_count <= 1.0f ) {
			best_spot = spot;
		}
	}
	if ( best_spot ) {
		FUNC3(best_spot->s.origin, origin);
		origin[2] += 9.0f;
		FUNC3(best_spot->s.angles, angles);
		if ( best_spot->randomAngleRange == 360.0f ) {
			angles[1] = FUNC4() * 360.0f;
		} else {
			// Pick random orientation within segment: angles[1] +/- 0.5 * segment.
			float segment = ( FUNC4() - 0.5f ) * best_spot->randomAngleRange;
			angles[1] += segment;
		}
	}
	return best_spot;
}