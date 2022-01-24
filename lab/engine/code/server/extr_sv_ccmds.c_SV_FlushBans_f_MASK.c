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
struct TYPE_2__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* com_sv_running ; 
 scalar_t__ serverBansCount ; 

__attribute__((used)) static void FUNC2(void)
{
	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC0( "Server is not running.\n" );
		return;
	}

	serverBansCount = 0;
	
	// empty the ban file.
	FUNC1();
	
	FUNC0("All bans and exceptions have been deleted.\n");
}