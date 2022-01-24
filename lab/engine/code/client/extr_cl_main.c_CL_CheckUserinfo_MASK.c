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
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ CA_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int CVAR_USERINFO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ clc ; 
 int cvar_modifiedFlags ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void FUNC4( void ) {
	// don't add reliable commands when not yet connected
	if(clc.state < CA_CONNECTED)
		return;

	// don't overflow the reliable command buffer when paused
	if(FUNC1())
		return;

	// send a reliable userinfo update if needed
	if(cvar_modifiedFlags & CVAR_USERINFO)
	{
		cvar_modifiedFlags &= ~CVAR_USERINFO;
		FUNC0(FUNC3("userinfo \"%s\"", FUNC2( CVAR_USERINFO ) ), qfalse);
	}
}