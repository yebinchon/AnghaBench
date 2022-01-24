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
typedef  int /*<<< orphan*/  sfxHandle_t ;
struct TYPE_2__ {int /*<<< orphan*/  menu; int /*<<< orphan*/  list; scalar_t__ refreshservers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int K_DEL ; 
 int K_ESCAPE ; 
 int K_KP_DEL ; 
 int K_MOUSE2 ; 
 int K_SPACE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ UIAS_FAVORITES ; 
 TYPE_1__ g_arenaservers ; 
 scalar_t__ g_servertype ; 
 int /*<<< orphan*/  menu_move_sound ; 

__attribute__((used)) static sfxHandle_t FUNC6( int key ) {
	if( key == K_SPACE  && g_arenaservers.refreshservers ) {
		FUNC2();	
		return menu_move_sound;
	}

	if( ( key == K_DEL || key == K_KP_DEL ) && ( g_servertype == UIAS_FAVORITES ) &&
		( FUNC5( &g_arenaservers.menu) == &g_arenaservers.list ) ) {
		FUNC0();
		FUNC3();
		return menu_move_sound;
	}

	if( key == K_MOUSE2 || key == K_ESCAPE ) {
		FUNC2();
		FUNC1();
	}


	return FUNC4( &g_arenaservers.menu, key );
}