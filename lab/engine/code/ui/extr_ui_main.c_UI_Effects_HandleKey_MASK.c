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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {int effectsColor; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ uiInfo ; 
 int /*<<< orphan*/ * uitogamecode ; 

__attribute__((used)) static qboolean FUNC2(int flags, float *special, int key) {
	int select = FUNC0(key);
	if (select != 0) {
		uiInfo.effectsColor += select;

		if( uiInfo.effectsColor > 6 ) {
			uiInfo.effectsColor = 0;
		} else if (uiInfo.effectsColor < 0) {
			uiInfo.effectsColor = 6;
		}

		FUNC1( "color1", uitogamecode[uiInfo.effectsColor] );
		return qtrue;
	}
	return qfalse;
}