#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_9__ {int frame; int clientNum; TYPE_2__ pos; int /*<<< orphan*/  origin; int /*<<< orphan*/  loopSound; int /*<<< orphan*/  eventParm; int /*<<< orphan*/  eType; } ;
struct TYPE_7__ {int /*<<< orphan*/  svFlags; } ;
struct TYPE_10__ {int wait; int random; int spawnflags; TYPE_3__ s; TYPE_1__ r; int /*<<< orphan*/  use; int /*<<< orphan*/  noise_index; } ;
typedef  TYPE_4__ gentity_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  ET_SPEAKER ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char**) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  SVF_BROADCAST ; 
 int /*<<< orphan*/  Use_Target_Speaker ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10( gentity_t *ent ) {
	char	buffer[MAX_QPATH];
	char	*s;

	FUNC3( "wait", "0", &ent->wait );
	FUNC3( "random", "0", &ent->random );

	if ( !FUNC4( "noise", "NOSOUND", &s ) ) {
		FUNC1( "target_speaker without a noise key at %s", FUNC9( ent->s.origin ) );
	}

	// force all client relative sounds to be "activator" speakers that
	// play on the entity that activates it
	if ( s[0] == '*' ) {
		ent->spawnflags |= 8;
	}

	if (!FUNC7( s, ".wav" )) {
		FUNC0 (buffer, sizeof(buffer), "%s.wav", s );
	} else {
		FUNC5( buffer, s, sizeof(buffer) );
	}
	ent->noise_index = FUNC2(buffer);

	// a repeating speaker can be done completely client side
	ent->s.eType = ET_SPEAKER;
	ent->s.eventParm = ent->noise_index;
	ent->s.frame = ent->wait * 10;
	ent->s.clientNum = ent->random * 10;


	// check for prestarted looping sound
	if ( ent->spawnflags & 1 ) {
		ent->s.loopSound = ent->noise_index;
	}

	ent->use = Use_Target_Speaker;

	if (ent->spawnflags & 4) {
		ent->r.svFlags |= SVF_BROADCAST;
	}

	FUNC6( ent->s.origin, ent->s.pos.trBase );

	// must link the entity so we get areas and clusters so
	// the server can determine who to send updates to
	FUNC8( ent );
}