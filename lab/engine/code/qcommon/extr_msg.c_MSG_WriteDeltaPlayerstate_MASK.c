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
struct playerState_s {scalar_t__* stats; scalar_t__* persistant; scalar_t__* ammo; scalar_t__* powerups; } ;
typedef  struct playerState_s playerState_t ;
struct TYPE_4__ {int offset; int bits; } ;
typedef  TYPE_1__ netField_t ;
typedef  int /*<<< orphan*/  msg_t ;
typedef  int /*<<< orphan*/  dummy ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct playerState_s*,int /*<<< orphan*/ ,int) ; 
 int FLOAT_INT_BIAS ; 
 int FLOAT_INT_BITS ; 
 int MAX_PERSISTANT ; 
 int MAX_POWERUPS ; 
 int MAX_STATS ; 
 int MAX_WEAPONS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int oldsize ; 
 TYPE_1__* playerStateFields ; 

void FUNC6( msg_t *msg, struct playerState_s *from, struct playerState_s *to ) {
	int				i;
	playerState_t	dummy;
	int				statsbits;
	int				persistantbits;
	int				ammobits;
	int				powerupbits;
	int				numFields;
	netField_t		*field;
	int				*fromF, *toF;
	float			fullFloat;
	int				trunc, lc;

	if (!from) {
		from = &dummy;
		FUNC1 (&dummy, 0, sizeof(dummy));
	}

	numFields = FUNC0( playerStateFields );

	lc = 0;
	for ( i = 0, field = playerStateFields ; i < numFields ; i++, field++ ) {
		fromF = (int *)( (byte *)from + field->offset );
		toF = (int *)( (byte *)to + field->offset );
		if ( *fromF != *toF ) {
			lc = i+1;
		}
	}

	FUNC3( msg, lc );	// # of changes

	oldsize += numFields - lc;

	for ( i = 0, field = playerStateFields ; i < lc ; i++, field++ ) {
		fromF = (int *)( (byte *)from + field->offset );
		toF = (int *)( (byte *)to + field->offset );

		if ( *fromF == *toF ) {
			FUNC2( msg, 0, 1 );	// no change
			continue;
		}

		FUNC2( msg, 1, 1 );	// changed
//		pcount[i]++;

		if ( field->bits == 0 ) {
			// float
			fullFloat = *(float *)toF;
			trunc = (int)fullFloat;

			if ( trunc == fullFloat && trunc + FLOAT_INT_BIAS >= 0 && 
				trunc + FLOAT_INT_BIAS < ( 1 << FLOAT_INT_BITS ) ) {
				// send as small integer
				FUNC2( msg, 0, 1 );
				FUNC2( msg, trunc + FLOAT_INT_BIAS, FLOAT_INT_BITS );
			} else {
				// send as full floating point value
				FUNC2( msg, 1, 1 );
				FUNC2( msg, *toF, 32 );
			}
		} else {
			// integer
			FUNC2( msg, *toF, field->bits );
		}
	}


	//
	// send the arrays
	//
	statsbits = 0;
	for (i=0 ; i<MAX_STATS ; i++) {
		if (to->stats[i] != from->stats[i]) {
			statsbits |= 1<<i;
		}
	}
	persistantbits = 0;
	for (i=0 ; i<MAX_PERSISTANT ; i++) {
		if (to->persistant[i] != from->persistant[i]) {
			persistantbits |= 1<<i;
		}
	}
	ammobits = 0;
	for (i=0 ; i<MAX_WEAPONS ; i++) {
		if (to->ammo[i] != from->ammo[i]) {
			ammobits |= 1<<i;
		}
	}
	powerupbits = 0;
	for (i=0 ; i<MAX_POWERUPS ; i++) {
		if (to->powerups[i] != from->powerups[i]) {
			powerupbits |= 1<<i;
		}
	}

	if (!statsbits && !persistantbits && !ammobits && !powerupbits) {
		FUNC2( msg, 0, 1 );	// no change
		oldsize += 4;
		return;
	}
	FUNC2( msg, 1, 1 );	// changed

	if ( statsbits ) {
		FUNC2( msg, 1, 1 );	// changed
		FUNC2( msg, statsbits, MAX_STATS );
		for (i=0 ; i<MAX_STATS ; i++)
			if (statsbits & (1<<i) )
				FUNC5 (msg, to->stats[i]);
	} else {
		FUNC2( msg, 0, 1 );	// no change
	}


	if ( persistantbits ) {
		FUNC2( msg, 1, 1 );	// changed
		FUNC2( msg, persistantbits, MAX_PERSISTANT );
		for (i=0 ; i<MAX_PERSISTANT ; i++)
			if (persistantbits & (1<<i) )
				FUNC4 (msg, to->persistant[i]);
	} else {
		FUNC2( msg, 0, 1 );	// no change
	}


	if ( ammobits ) {
		FUNC2( msg, 1, 1 );	// changed
		FUNC2( msg, ammobits, MAX_WEAPONS );
		for (i=0 ; i<MAX_WEAPONS ; i++)
			if (ammobits & (1<<i) )
				FUNC5 (msg, to->ammo[i]);
	} else {
		FUNC2( msg, 0, 1 );	// no change
	}


	if ( powerupbits ) {
		FUNC2( msg, 1, 1 );	// changed
		FUNC2( msg, powerupbits, MAX_POWERUPS );
		for (i=0 ; i<MAX_POWERUPS ; i++)
			if (powerupbits & (1<<i) )
				FUNC4( msg, to->powerups[i] );
	} else {
		FUNC2( msg, 0, 1 );	// no change
	}
}