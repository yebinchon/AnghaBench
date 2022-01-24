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
struct entityState_s {int number; } ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_4__ {int offset; int bits; } ;
typedef  TYPE_1__ netField_t ;
typedef  int /*<<< orphan*/  msg_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int FLOAT_INT_BIAS ; 
 int FLOAT_INT_BITS ; 
 int GENTITYNUM_BITS ; 
 int MAX_GENTITIES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* entityStateFields ; 
 int oldsize ; 

void FUNC5( msg_t *msg, struct entityState_s *from, struct entityState_s *to, 
						   qboolean force ) {
	int			i, lc;
	int			numFields;
	netField_t	*field;
	int			trunc;
	float		fullFloat;
	int			*fromF, *toF;

	numFields = FUNC0( entityStateFields );

	// all fields should be 32 bits to avoid any compiler packing issues
	// the "number" field is not part of the field list
	// if this assert fails, someone added a field to the entityState_t
	// struct without updating the message fields
	FUNC4( numFields + 1 == sizeof( *from )/4 );

	// a NULL to is a delta remove message
	if ( to == NULL ) {
		if ( from == NULL ) {
			return;
		}
		FUNC2( msg, from->number, GENTITYNUM_BITS );
		FUNC2( msg, 1, 1 );
		return;
	}

	if ( to->number < 0 || to->number >= MAX_GENTITIES ) {
		FUNC1 (ERR_FATAL, "MSG_WriteDeltaEntity: Bad entity number: %i", to->number );
	}

	lc = 0;
	// build the change vector as bytes so it is endien independent
	for ( i = 0, field = entityStateFields ; i < numFields ; i++, field++ ) {
		fromF = (int *)( (byte *)from + field->offset );
		toF = (int *)( (byte *)to + field->offset );
		if ( *fromF != *toF ) {
			lc = i+1;
		}
	}

	if ( lc == 0 ) {
		// nothing at all changed
		if ( !force ) {
			return;		// nothing at all
		}
		// write two bits for no change
		FUNC2( msg, to->number, GENTITYNUM_BITS );
		FUNC2( msg, 0, 1 );		// not removed
		FUNC2( msg, 0, 1 );		// no delta
		return;
	}

	FUNC2( msg, to->number, GENTITYNUM_BITS );
	FUNC2( msg, 0, 1 );			// not removed
	FUNC2( msg, 1, 1 );			// we have a delta

	FUNC3( msg, lc );	// # of changes

	oldsize += numFields;

	for ( i = 0, field = entityStateFields ; i < lc ; i++, field++ ) {
		fromF = (int *)( (byte *)from + field->offset );
		toF = (int *)( (byte *)to + field->offset );

		if ( *fromF == *toF ) {
			FUNC2( msg, 0, 1 );	// no change
			continue;
		}

		FUNC2( msg, 1, 1 );	// changed

		if ( field->bits == 0 ) {
			// float
			fullFloat = *(float *)toF;
			trunc = (int)fullFloat;

			if (fullFloat == 0.0f) {
					FUNC2( msg, 0, 1 );
					oldsize += FLOAT_INT_BITS;
			} else {
				FUNC2( msg, 1, 1 );
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
			}
		} else {
			if (*toF == 0) {
				FUNC2( msg, 0, 1 );
			} else {
				FUNC2( msg, 1, 1 );
				// integer
				FUNC2( msg, *toF, field->bits );
			}
		}
	}
}