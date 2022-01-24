#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* draw ) () ;scalar_t__ showlogo; scalar_t__ fullscreen; } ;
struct TYPE_3__ {int frametime; int realtime; scalar_t__ cursory; scalar_t__ cursorx; scalar_t__ debug; int /*<<< orphan*/  cursor; void* firstdraw; TYPE_2__* activemenu; int /*<<< orphan*/  menuBackNoLogoShader; int /*<<< orphan*/  menuBackShader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CHAN_LOCAL_SOUND ; 
 int KEYCATCH_UI ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int SCREEN_HEIGHT ; 
 int SCREEN_WIDTH ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int UI_LEFT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  colorRed ; 
 void* m_entersound ; 
 int /*<<< orphan*/  menu_in_sound ; 
 void* qfalse ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ uis ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,scalar_t__) ; 

void FUNC11( int realtime )
{
	uis.frametime = realtime - uis.realtime;
	uis.realtime  = realtime;

	if ( !( FUNC8() & KEYCATCH_UI ) ) {
		return;
	}

	FUNC6();

	FUNC0();

	if ( uis.activemenu )
	{
		if (uis.activemenu->fullscreen)
		{
			// draw the background
			if( uis.activemenu->showlogo ) {
				FUNC2( 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, uis.menuBackShader );
			}
			else {
				FUNC2( 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, uis.menuBackNoLogoShader );
			}
		}

		if (uis.activemenu->draw)
			uis.activemenu->draw();
		else
			FUNC1( uis.activemenu );

		if( uis.firstdraw ) {
			FUNC4( 0, 0 );
			uis.firstdraw = qfalse;
		}
	}

	// draw cursor
	FUNC5( NULL );
	FUNC2( uis.cursorx-16, uis.cursory-16, 32, 32, uis.cursor);

#ifndef NDEBUG
	if (uis.debug)
	{
		// cursor coordinates
		FUNC3( 0, 0, FUNC10("(%d,%d)",uis.cursorx,uis.cursory), UI_LEFT|UI_SMALLFONT, colorRed );
	}
#endif

	// delay playing the enter sound until after the
	// menu has been drawn, to avoid delay while
	// caching images
	if (m_entersound)
	{
		FUNC9( menu_in_sound, CHAN_LOCAL_SOUND );
		m_entersound = qfalse;
	}
}