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
struct TYPE_4__ {scalar_t__ state; scalar_t__ demoplaying; } ;
struct TYPE_3__ {int repeats; int /*<<< orphan*/  down; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 scalar_t__ CA_CINEMATIC ; 
 scalar_t__ CA_DISCONNECTED ; 
 int /*<<< orphan*/  CGAME_EVENT_NONE ; 
 int /*<<< orphan*/  CG_EVENT_HANDLING ; 
 int /*<<< orphan*/  CG_KEY_EVENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int KEYCATCH_CGAME ; 
 int KEYCATCH_CONSOLE ; 
 int KEYCATCH_MESSAGE ; 
 int KEYCATCH_UI ; 
 size_t K_ALT ; 
 int K_CONSOLE ; 
 int K_ENTER ; 
 int K_ESCAPE ; 
 int K_MOUSE1 ; 
 size_t K_SHIFT ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  UIMENU_INGAME ; 
 int /*<<< orphan*/  UIMENU_MAIN ; 
 int /*<<< orphan*/  UI_KEY_EVENT ; 
 int /*<<< orphan*/  UI_SET_ACTIVE_MENU ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  anykeydown ; 
 scalar_t__ cgvm ; 
 TYPE_2__ clc ; 
 TYPE_1__* keys ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ uivm ; 

void FUNC14( int key, unsigned time )
{
	keys[key].down = qtrue;
	keys[key].repeats++;
	if( keys[key].repeats == 1 )
		anykeydown++;

	if( keys[K_ALT].down && key == K_ENTER )
	{
		// don't repeat fullscreen toggle when keys are held down
		if ( keys[K_ENTER].repeats > 1 ) {
			return;
		}

		FUNC5( "r_fullscreen",
			!FUNC6( "r_fullscreen" ) );
		return;
	}

	// console key is hardcoded, so the user can never unbind it
	if( key == K_CONSOLE || ( keys[K_SHIFT].down && key == K_ESCAPE ) )
	{
		FUNC2 ();
		FUNC8 ();
		return;
	}


	// keys can still be used for bound actions
	if ( ( key < 128 || key == K_MOUSE1 ) &&
		( clc.demoplaying || clc.state == CA_CINEMATIC ) && FUNC9( ) == 0 ) {

		if (FUNC7 ("com_cameraMode") == 0) {
			FUNC4 ("nextdemo","");
			key = K_ESCAPE;
		}
	}

	// escape is always handled special
	if ( key == K_ESCAPE ) {
		if ( FUNC9( ) & KEYCATCH_MESSAGE ) {
			// clear message mode
			FUNC11( key );
			return;
		}

		// escape always gets out of CGAME stuff
		if (FUNC9( ) & KEYCATCH_CGAME) {
			FUNC10( FUNC9( ) & ~KEYCATCH_CGAME );
			FUNC13 (cgvm, CG_EVENT_HANDLING, CGAME_EVENT_NONE);
			return;
		}

		if ( !( FUNC9( ) & KEYCATCH_UI ) ) {
			if ( clc.state == CA_ACTIVE && !clc.demoplaying ) {
				FUNC13( uivm, UI_SET_ACTIVE_MENU, UIMENU_INGAME );
			}
			else if ( clc.state != CA_DISCONNECTED ) {
				FUNC0();
				FUNC12();
				FUNC13( uivm, UI_SET_ACTIVE_MENU, UIMENU_MAIN );
			}
			return;
		}

		FUNC13( uivm, UI_KEY_EVENT, key, qtrue );
		return;
	}

	// send the bound action
	FUNC1( key, qtrue, time );

	// distribute the key down event to the appropriate handler
	if ( FUNC9( ) & KEYCATCH_CONSOLE ) {
		FUNC3( key );
	} else if ( FUNC9( ) & KEYCATCH_UI ) {
		if ( uivm ) {
			FUNC13( uivm, UI_KEY_EVENT, key, qtrue );
		} 
	} else if ( FUNC9( ) & KEYCATCH_CGAME ) {
		if ( cgvm ) {
			FUNC13( cgvm, CG_KEY_EVENT, key, qtrue );
		} 
	} else if ( FUNC9( ) & KEYCATCH_MESSAGE ) {
		FUNC11( key );
	} else if ( clc.state == CA_DISCONNECTED ) {
		FUNC3( key );
	}
}