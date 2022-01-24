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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CS_PLAYERS ; 
 int MAX_CLIENTS ; 

__attribute__((used)) static void FUNC2( void ) {
	int		i;

	for (i=0 ; i<MAX_CLIENTS ; i++) {
		const char		*clientInfo;

		clientInfo = FUNC0( CS_PLAYERS+i );
		if ( !clientInfo[0] ) {
			continue;
		}
		FUNC1( i );
	}
}