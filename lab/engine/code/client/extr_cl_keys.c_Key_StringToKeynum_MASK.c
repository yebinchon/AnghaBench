#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int keynum; scalar_t__ name; } ;
typedef  TYPE_1__ keyname_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 TYPE_1__* keynames ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char) ; 

int FUNC4( char *str ) {
	keyname_t	*kn;
	
	if ( !str || !str[0] ) {
		return -1;
	}
	if ( !str[1] ) {
		return FUNC3( str[0] );
	}

	// check for hex code
	if ( FUNC2( str ) == 4 ) {
		int n = FUNC0( str );

		if ( n >= 0 ) {
			return n;
		}
	}

	// scan for a text match
	for ( kn=keynames ; kn->name ; kn++ ) {
		if ( !FUNC1( str,kn->name ) )
			return kn->keynum;
	}

	return -1;
}