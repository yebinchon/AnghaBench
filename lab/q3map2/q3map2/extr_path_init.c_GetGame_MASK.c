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
struct TYPE_4__ {char* arg; } ;
typedef  TYPE_1__ game_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* games ; 

game_t *FUNC3( char *arg ){
	int i;


	/* dummy check */
	if ( arg == NULL || arg[ 0 ] == '\0' ) {
		return NULL;
	}

	/* joke */
	if ( !FUNC0( arg, "quake1" ) ||
		 !FUNC0( arg, "quake2" ) ||
		 !FUNC0( arg, "unreal" ) ||
		 !FUNC0( arg, "ut2k3" ) ||
		 !FUNC0( arg, "dn3d" ) ||
		 !FUNC0( arg, "dnf" ) ||
		 !FUNC0( arg, "hl" ) ) {
		FUNC1( "April fools, silly rabbit!\n" );
		FUNC2( 0 );
	}

	/* test it */
	i = 0;
	while ( games[ i ].arg != NULL )
	{
		if ( FUNC0( arg, games[ i ].arg ) == 0 ) {
			return &games[ i ];
		}
		i++;
	}

	/* no matching game */
	return NULL;
}