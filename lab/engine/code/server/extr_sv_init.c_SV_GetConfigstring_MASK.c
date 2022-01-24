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
struct TYPE_2__ {int /*<<< orphan*/ * configstrings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int MAX_CONFIGSTRINGS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ sv ; 

void FUNC2( int index, char *buffer, int bufferSize ) {
	if ( bufferSize < 1 ) {
		FUNC0( ERR_DROP, "SV_GetConfigstring: bufferSize == %i", bufferSize );
	}
	if ( index < 0 || index >= MAX_CONFIGSTRINGS ) {
		FUNC0 (ERR_DROP, "SV_GetConfigstring: bad index %i", index);
	}
	if ( !sv.configstrings[index] ) {
		buffer[0] = 0;
		return;
	}

	FUNC1( buffer, sv.configstrings[index], bufferSize );
}