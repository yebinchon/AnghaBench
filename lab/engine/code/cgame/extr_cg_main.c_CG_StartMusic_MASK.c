#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  parm2 ;
typedef  int /*<<< orphan*/  parm1 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  CS_MUSIC ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

void FUNC4( void ) {
	char	*s;
	char	parm1[MAX_QPATH], parm2[MAX_QPATH];

	// start the background music
	s = (char *)FUNC0( CS_MUSIC );
	FUNC2( parm1, FUNC1( &s ), sizeof( parm1 ) );
	FUNC2( parm2, FUNC1( &s ), sizeof( parm2 ) );

	FUNC3( parm1, parm2 );
}