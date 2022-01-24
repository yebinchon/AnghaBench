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
struct TYPE_2__ {int clientNum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int CS_PLAYERS ; 
 int MAX_CLIENTS ; 
 TYPE_1__ cg ; 

__attribute__((used)) static void FUNC4( void ) {
	int		i;

	FUNC2(cg.clientNum);
	FUNC3(cg.clientNum);

	for (i=0 ; i<MAX_CLIENTS ; i++) {
		const char		*clientInfo;

		if (cg.clientNum == i) {
			continue;
		}

		clientInfo = FUNC1( CS_PLAYERS+i );
		if ( !clientInfo[0]) {
			continue;
		}
		FUNC2( i );
		FUNC3( i );
	}
	FUNC0();
}