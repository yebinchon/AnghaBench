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
struct TYPE_2__ {int /*<<< orphan*/ * activemenu; scalar_t__ menusp; } ;

/* Variables and functions */
 int KEYCATCH_UI ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ uis ; 

void FUNC4 (void)
{
	uis.menusp     = 0;
	uis.activemenu = NULL;

	FUNC3( FUNC2() & ~KEYCATCH_UI );
	FUNC1();
	FUNC0( "cl_paused", "0" );
}