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
 int BLERR_NOERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (char*,char*) ; 
 void* cmd_grappleoff ; 
 void* cmd_grappleon ; 
 void* entitytypemissile ; 
 void* offhandgrapple ; 
 void* sv_gravity ; 
 void* sv_maxbarrier ; 
 void* sv_maxstep ; 
 void* weapindex_bfg10k ; 
 void* weapindex_grapple ; 
 void* weapindex_rocketlauncher ; 

int FUNC2(void)
{
	FUNC0();
	sv_maxstep = FUNC1("sv_step", "18");
	sv_maxbarrier = FUNC1("sv_maxbarrier", "32");
	sv_gravity = FUNC1("sv_gravity", "800");
	weapindex_rocketlauncher = FUNC1("weapindex_rocketlauncher", "5");
	weapindex_bfg10k = FUNC1("weapindex_bfg10k", "9");
	weapindex_grapple = FUNC1("weapindex_grapple", "10");
	entitytypemissile = FUNC1("entitytypemissile", "3");
	offhandgrapple = FUNC1("offhandgrapple", "0");
	cmd_grappleon = FUNC1("cmd_grappleon", "grappleon");
	cmd_grappleoff = FUNC1("cmd_grappleoff", "grappleoff");
	return BLERR_NOERROR;
}