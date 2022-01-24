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
typedef  scalar_t__ sfxHandle_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* StartLocalSound ) (scalar_t__,int /*<<< orphan*/ ) ;scalar_t__ (* RegisterSound ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_LOCAL_SOUND ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_1__ si ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC5( void ) {
	int 		i;
	int			c;
	sfxHandle_t	h;

	if( !si.RegisterSound || !si.StartLocalSound ) {
		return;
	}

	c = FUNC0();

	if( c < 2 ) {
		FUNC2 ("Usage: play <sound filename> [sound filename] [sound filename] ...\n");
		return;
	}

	for( i = 1; i < c; i++ ) {
		h = si.RegisterSound( FUNC1(i), qfalse );

		if( h ) {
			si.StartLocalSound( h, CHAN_LOCAL_SOUND );
		}
	}
}