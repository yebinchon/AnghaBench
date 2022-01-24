#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec3_t ;
typedef  int /*<<< orphan*/  gentity_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t YAW ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ g_cheats ; 
 int g_entities ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6( gentity_t *ent ) {
	vec3_t		origin, angles;
	char		buffer[MAX_TOKEN_CHARS];
	int			i;

	if ( !g_cheats.integer ) {
		FUNC5( ent-g_entities, "print \"Cheats are not enabled on this server.\n\"");
		return;
	}
	if ( FUNC3() != 5 ) {
		FUNC5( ent-g_entities, "print \"usage: setviewpos x y z yaw\n\"");
		return;
	}

	FUNC1( angles );
	for ( i = 0 ; i < 3 ; i++ ) {
		FUNC4( i + 1, buffer, sizeof( buffer ) );
		origin[i] = FUNC2( buffer );
	}

	FUNC4( 4, buffer, sizeof( buffer ) );
	angles[YAW] = FUNC2( buffer );

	FUNC0( ent, origin, angles );
}