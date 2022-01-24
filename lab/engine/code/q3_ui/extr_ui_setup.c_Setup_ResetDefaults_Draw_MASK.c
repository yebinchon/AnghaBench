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
 int PROP_HEIGHT ; 
 int SCREEN_WIDTH ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  color_yellow ; 

__attribute__((used)) static void FUNC1( void ) {
	FUNC0( SCREEN_WIDTH/2, 356 + PROP_HEIGHT * 0, "WARNING: This will reset *ALL*", UI_CENTER|UI_SMALLFONT, color_yellow );
	FUNC0( SCREEN_WIDTH/2, 356 + PROP_HEIGHT * 1, "options to their default values.", UI_CENTER|UI_SMALLFONT, color_yellow );
}