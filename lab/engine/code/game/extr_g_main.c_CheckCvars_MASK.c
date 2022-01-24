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
struct TYPE_2__ {int modificationCount; scalar_t__* string; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,char*) ; 
 TYPE_1__ g_password ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2( void ) {
	static int lastMod = -1;

	if ( g_password.modificationCount != lastMod ) {
		lastMod = g_password.modificationCount;
		if ( *g_password.string && FUNC0( g_password.string, "none" ) ) {
			FUNC1( "g_needpass", "1" );
		} else {
			FUNC1( "g_needpass", "0" );
		}
	}
}