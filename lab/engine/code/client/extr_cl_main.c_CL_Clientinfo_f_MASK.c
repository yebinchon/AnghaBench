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
struct TYPE_2__ {int /*<<< orphan*/  servername; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVAR_USERINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ clc ; 

void FUNC3( void ) {
	FUNC0( "--------- Client Information ---------\n" );
	FUNC0( "state: %i\n", clc.state );
	FUNC0( "Server: %s\n", clc.servername );
	FUNC0 ("User info settings:\n");
	FUNC2( FUNC1( CVAR_USERINFO ) );
	FUNC0( "--------------------------------------\n" );
}