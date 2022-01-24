#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int id; } ;
typedef  TYPE_1__ gentity_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_11__ {int /*<<< orphan*/  integer; } ;
struct TYPE_10__ {int num_entities; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*) ; 
 TYPE_4__ g_cheats ; 
 TYPE_1__* g_entities ; 
 TYPE_2__ level ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

void FUNC6( gentity_t *ent ) {
	gentity_t *e;
	int	id, i;
	char		buffer[MAX_TOKEN_CHARS];

	if ( !g_cheats.integer ) {
		FUNC5( ent-g_entities, "print \"Cheats are not enabled on this server.\n\"" );
		return;
	}
	if ( FUNC3() == 3 ) {
		FUNC4( 2, buffer, sizeof( buffer ) );
		i = FUNC0( ent, buffer, qtrue, qtrue );
		if (i == -1) {
			FUNC5( ent-g_entities, "print \"Invalid player name\n\"");
		return;
		}
		ent = &g_entities[i];
	} else if ( FUNC3() != 2 ) {
		FUNC5( ent-g_entities, "print \"usage: pickup id <optional player name>\n\"" );
		return;
	}
	FUNC4( 1, buffer, sizeof( buffer ) );
	id = FUNC2( buffer );
	for (i = 0; i < level.num_entities; i++) {
		e = &g_entities[i];
		if (e->id && id == e->id) {
			FUNC1( e, ent, NULL );
		}
	}
}