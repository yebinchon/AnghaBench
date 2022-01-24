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
typedef  int /*<<< orphan*/  vec4_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCREEN_HEIGHT ; 
 int /*<<< orphan*/  SCREEN_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int*,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( void ) {
	int i, x, y, width, height;
	vec4_t rgba;
	int c = FUNC2( SCREEN_WIDTH, SCREEN_HEIGHT );
	for (i = 0; i < c; ++i) {
		FUNC1( i, &x, &y, &width, &height, rgba );
		FUNC0( x, y, width, height, rgba );
	}
}