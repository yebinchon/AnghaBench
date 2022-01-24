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
struct TYPE_2__ {int* phys_gravitydirection; void* rs_maxjumpfallheight; void* rs_maxfallheight; void* rs_falldamage10; void* rs_falldamage5; void* rs_startelevator; void* rs_funcbob; void* rs_aircontrolledjumppad; void* rs_jumppad; void* rs_bfgjump; void* rs_rocketjump; void* rs_startjump; void* rs_startwalkoffledge; void* rs_startgrapple; void* rs_startcrouch; void* rs_barrierjump; void* rs_teleport; void* rs_waterjump; void* phys_falldelta10; void* phys_falldelta5; void* phys_jumpvel; void* phys_maxbarrier; void* phys_maxwaterjump; void* phys_maxsteepness; void* phys_maxstep; void* phys_swimaccelerate; void* phys_airaccelerate; void* phys_walkaccelerate; void* phys_maxswimvelocity; void* phys_maxcrouchvelocity; void* phys_maxwalkvelocity; void* phys_maxvelocity; void* phys_watergravity; void* phys_waterfriction; void* phys_gravity; void* phys_stopspeed; void* phys_friction; } ;

/* Variables and functions */
 void* FUNC0 (char*,char*) ; 
 TYPE_1__ aassettings ; 

void FUNC1(void)
{
	aassettings.phys_gravitydirection[0]	= 0;
	aassettings.phys_gravitydirection[1]	= 0;
	aassettings.phys_gravitydirection[2]	= -1;
	aassettings.phys_friction				= FUNC0("phys_friction", "6");
	aassettings.phys_stopspeed				= FUNC0("phys_stopspeed", "100");
	aassettings.phys_gravity				= FUNC0("phys_gravity", "800");
	aassettings.phys_waterfriction			= FUNC0("phys_waterfriction", "1");
	aassettings.phys_watergravity			= FUNC0("phys_watergravity", "400");
	aassettings.phys_maxvelocity			= FUNC0("phys_maxvelocity", "320");
	aassettings.phys_maxwalkvelocity		= FUNC0("phys_maxwalkvelocity", "320");
	aassettings.phys_maxcrouchvelocity		= FUNC0("phys_maxcrouchvelocity", "100");
	aassettings.phys_maxswimvelocity		= FUNC0("phys_maxswimvelocity", "150");
	aassettings.phys_walkaccelerate			= FUNC0("phys_walkaccelerate", "10");
	aassettings.phys_airaccelerate			= FUNC0("phys_airaccelerate", "1");
	aassettings.phys_swimaccelerate			= FUNC0("phys_swimaccelerate", "4");
	aassettings.phys_maxstep				= FUNC0("phys_maxstep", "19");
	aassettings.phys_maxsteepness			= FUNC0("phys_maxsteepness", "0.7");
	aassettings.phys_maxwaterjump			= FUNC0("phys_maxwaterjump", "18");
	aassettings.phys_maxbarrier				= FUNC0("phys_maxbarrier", "33");
	aassettings.phys_jumpvel				= FUNC0("phys_jumpvel", "270");
	aassettings.phys_falldelta5				= FUNC0("phys_falldelta5", "40");
	aassettings.phys_falldelta10			= FUNC0("phys_falldelta10", "60");
	aassettings.rs_waterjump				= FUNC0("rs_waterjump", "400");
	aassettings.rs_teleport					= FUNC0("rs_teleport", "50");
	aassettings.rs_barrierjump				= FUNC0("rs_barrierjump", "100");
	aassettings.rs_startcrouch				= FUNC0("rs_startcrouch", "300");
	aassettings.rs_startgrapple				= FUNC0("rs_startgrapple", "500");
	aassettings.rs_startwalkoffledge		= FUNC0("rs_startwalkoffledge", "70");
	aassettings.rs_startjump				= FUNC0("rs_startjump", "300");
	aassettings.rs_rocketjump				= FUNC0("rs_rocketjump", "500");
	aassettings.rs_bfgjump					= FUNC0("rs_bfgjump", "500");
	aassettings.rs_jumppad					= FUNC0("rs_jumppad", "250");
	aassettings.rs_aircontrolledjumppad		= FUNC0("rs_aircontrolledjumppad", "300");
	aassettings.rs_funcbob					= FUNC0("rs_funcbob", "300");
	aassettings.rs_startelevator			= FUNC0("rs_startelevator", "50");
	aassettings.rs_falldamage5				= FUNC0("rs_falldamage5", "300");
	aassettings.rs_falldamage10				= FUNC0("rs_falldamage10", "500");
	aassettings.rs_maxfallheight			= FUNC0("rs_maxfallheight", "0");
	aassettings.rs_maxjumpfallheight		= FUNC0("rs_maxjumpfallheight", "450");
}