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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ s_numSfx ; 
 scalar_t__ s_soundStarted ; 

void FUNC3( void ) {
	if ( !s_soundStarted ) {
		return;
	}

	FUNC1();
	FUNC2();

	s_soundStarted = 0;
	s_numSfx = 0;

	FUNC0("s_info");
}