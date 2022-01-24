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
 double FUNC0 (char const**) ; 
 double PROP_HEIGHT ; 
 double PROP_SMALL_SIZE_SCALE ; 
 double SCREEN_HEIGHT ; 
 int UI_BIGFONT ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC1 (int,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  color_black ; 
 int /*<<< orphan*/  color_blue ; 

__attribute__((used)) static void FUNC3( void ) {
	int		y;
	int		i;

	// Deepmind Evaluation
	static const char *names[] = {
		"DeepMind Team",
		NULL
	};

	// Center text vertically on the screen
	y = (SCREEN_HEIGHT - FUNC0(names) * (1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE)) / 2;

	y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;

	for (i = 0; names[i]; i++) {
		FUNC1( 320, y, names[i], UI_CENTER|UI_BIGFONT, color_black );
		y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	}

	FUNC2( 320, 459, "www.deepmind.com", UI_CENTER|UI_SMALLFONT, color_blue );
}