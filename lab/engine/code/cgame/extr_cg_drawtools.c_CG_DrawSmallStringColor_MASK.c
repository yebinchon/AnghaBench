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
 int /*<<< orphan*/  FUNC0 (int,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMALLCHAR_HEIGHT ; 
 int /*<<< orphan*/  SMALLCHAR_WIDTH ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC1( int x, int y, const char *s, vec4_t color ) {
	FUNC0( x, y, s, color, qtrue, qfalse, SMALLCHAR_WIDTH, SMALLCHAR_HEIGHT, 0 );
}