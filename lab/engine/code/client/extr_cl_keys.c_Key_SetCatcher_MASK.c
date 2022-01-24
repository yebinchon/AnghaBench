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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int keyCatchers ; 

void FUNC1( int catcher ) {
	// If the catcher state is changing, clear all key states
	if( catcher != keyCatchers )
		FUNC0( );

	keyCatchers = catcher;
}