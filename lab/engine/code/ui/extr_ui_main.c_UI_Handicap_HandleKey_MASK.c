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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static qboolean FUNC4(int flags, float *special, int key) {
	int select = FUNC1(key);
	if (select != 0) {
		int h;

		h = FUNC0( 5, 100, FUNC3("handicap") );
		h += 5 * select;

		if (h > 100) {
			h = 5;
		} else if (h < 5) {
			h = 100;
		}

		FUNC2( "handicap", h );
		return qtrue;
	}
	return qfalse;
}