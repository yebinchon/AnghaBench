#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* value; void* key; } ;
typedef  TYPE_1__ epair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_KEY ; 
 int MAX_VALUE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_1__* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  token ; 

epair_t *FUNC7( void ) {
	epair_t *e;

	e = FUNC5( sizeof( epair_t ) );
	FUNC4( e, 0, sizeof( epair_t ) );

	if ( FUNC6( token ) >= MAX_KEY - 1 ) {
		FUNC0( "ParseEpar: token too long" );
	}
	e->key = FUNC3( token );
	FUNC1( qfalse );
	if ( FUNC6( token ) >= MAX_VALUE - 1 ) {
		FUNC0( "ParseEpar: token too long" );
	}
	e->value = FUNC3( token );

	// strip trailing spaces that sometimes get accidentally
	// added in the editor
	FUNC2( e->key );
	FUNC2( e->value );

	return e;
}