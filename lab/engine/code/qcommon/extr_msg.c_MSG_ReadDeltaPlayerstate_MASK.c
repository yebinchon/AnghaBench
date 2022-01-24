#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {void** powerups; void** ammo; void** persistant; void** stats; } ;
typedef  TYPE_1__ playerState_t ;
struct TYPE_16__ {int offset; int bits; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ netField_t ;
struct TYPE_17__ {scalar_t__ bit; int readcount; } ;
typedef  TYPE_3__ msg_t ;
typedef  int /*<<< orphan*/  dummy ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_18__ {int integer; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 scalar_t__ FLOAT_INT_BIAS ; 
 int FLOAT_INT_BITS ; 
 int GENTITYNUM_BITS ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int MAX_PERSISTANT ; 
 int MAX_POWERUPS ; 
 int MAX_STATS ; 
 int MAX_WEAPONS ; 
 int FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (TYPE_3__*) ; 
 void* FUNC7 (TYPE_3__*) ; 
 void* FUNC8 (TYPE_3__*) ; 
 TYPE_5__* cl_shownet ; 
 TYPE_2__* playerStateFields ; 

void FUNC9 (msg_t *msg, playerState_t *from, playerState_t *to ) {
	int			i, lc;
	int			bits;
	netField_t	*field;
	int			numFields;
	int			startBit, endBit;
	int			print;
	int			*fromF, *toF;
	int			trunc;
	playerState_t	dummy;

	if ( !from ) {
		from = &dummy;
		FUNC2( &dummy, 0, sizeof( dummy ) );
	}
	*to = *from;

	if ( msg->bit == 0 ) {
		startBit = msg->readcount * 8 - GENTITYNUM_BITS;
	} else {
		startBit = ( msg->readcount - 1 ) * 8 + msg->bit - GENTITYNUM_BITS;
	}

	// shownet 2/3 will interleave with other printed info, -2 will
	// just print the delta records
	if ( cl_shownet && ( cl_shownet->integer >= 2 || cl_shownet->integer == -2 ) ) {
		print = 1;
		FUNC3( "%3i: playerstate ", msg->readcount );
	} else {
		print = 0;
	}

	numFields = FUNC0( playerStateFields );
	lc = FUNC6(msg);

	if ( lc > numFields || lc < 0 ) {
		FUNC1( ERR_DROP, "invalid playerState field count" );
	}

	for ( i = 0, field = playerStateFields ; i < lc ; i++, field++ ) {
		fromF = (int *)( (byte *)from + field->offset );
		toF = (int *)( (byte *)to + field->offset );

		if ( ! FUNC5( msg, 1 ) ) {
			// no change
			*toF = *fromF;
		} else {
			if ( field->bits == 0 ) {
				// float
				if ( FUNC5( msg, 1 ) == 0 ) {
					// integral float
					trunc = FUNC5( msg, FLOAT_INT_BITS );
					// bias to allow equal parts positive and negative
					trunc -= FLOAT_INT_BIAS;
					*(float *)toF = trunc; 
					if ( print ) {
						FUNC3( "%s:%i ", field->name, trunc );
					}
				} else {
					// full floating point value
					*toF = FUNC5( msg, 32 );
					if ( print ) {
						FUNC3( "%s:%f ", field->name, *(float *)toF );
					}
				}
			} else {
				// integer
				*toF = FUNC5( msg, field->bits );
				if ( print ) {
					FUNC3( "%s:%i ", field->name, *toF );
				}
			}
		}
	}
	for ( i=lc,field = &playerStateFields[lc];i<numFields; i++, field++) {
		fromF = (int *)( (byte *)from + field->offset );
		toF = (int *)( (byte *)to + field->offset );
		// no change
		*toF = *fromF;
	}


	// read the arrays
	if (FUNC5( msg, 1 ) ) {
		// parse stats
		if ( FUNC5( msg, 1 ) ) {
			FUNC4("PS_STATS");
			bits = FUNC5 (msg, MAX_STATS);
			for (i=0 ; i<MAX_STATS ; i++) {
				if (bits & (1<<i) ) {
					to->stats[i] = FUNC8(msg);
				}
			}
		}

		// parse persistant stats
		if ( FUNC5( msg, 1 ) ) {
			FUNC4("PS_PERSISTANT");
			bits = FUNC5 (msg, MAX_PERSISTANT);
			for (i=0 ; i<MAX_PERSISTANT ; i++) {
				if (bits & (1<<i) ) {
					to->persistant[i] = FUNC7(msg);
				}
			}
		}

		// parse ammo
		if ( FUNC5( msg, 1 ) ) {
			FUNC4("PS_AMMO");
			bits = FUNC5 (msg, MAX_WEAPONS);
			for (i=0 ; i<MAX_WEAPONS ; i++) {
				if (bits & (1<<i) ) {
					to->ammo[i] = FUNC8(msg);
				}
			}
		}

		// parse powerups
		if ( FUNC5( msg, 1 ) ) {
			FUNC4("PS_POWERUPS");
			bits = FUNC5 (msg, MAX_POWERUPS);
			for (i=0 ; i<MAX_POWERUPS ; i++) {
				if (bits & (1<<i) ) {
					to->powerups[i] = FUNC7(msg);
				}
			}
		}
	}

	if ( print ) {
		if ( msg->bit == 0 ) {
			endBit = msg->readcount * 8 - GENTITYNUM_BITS;
		} else {
			endBit = ( msg->readcount - 1 ) * 8 + msg->bit - GENTITYNUM_BITS;
		}
		FUNC3( " (%i bits)\n", endBit - startBit  );
	}
}