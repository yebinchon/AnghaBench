#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_3__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_4__ {TYPE_1__ punkbuster; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ g_arenaservers ; 
 int /*<<< orphan*/  punkbuster_msg ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( qboolean result ) {
	if (result)
	{
		FUNC3(0);
		FUNC1( punkbuster_msg );
	}
	g_arenaservers.punkbuster.curvalue = FUNC0( 0, 1, FUNC2( "cl_punkbuster" ) );
}