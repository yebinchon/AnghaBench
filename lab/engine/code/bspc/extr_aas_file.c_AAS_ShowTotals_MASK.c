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
struct TYPE_2__ {int /*<<< orphan*/  numclusters; int /*<<< orphan*/  portalindexsize; int /*<<< orphan*/  numportals; int /*<<< orphan*/  numnodes; int /*<<< orphan*/  reachabilitysize; int /*<<< orphan*/  numareasettings; int /*<<< orphan*/  numareas; int /*<<< orphan*/  faceindexsize; int /*<<< orphan*/  numfaces; int /*<<< orphan*/  edgeindexsize; int /*<<< orphan*/  numedges; int /*<<< orphan*/  numplanes; int /*<<< orphan*/  numvertexes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRAVEL_BARRIERJUMP ; 
 int /*<<< orphan*/  TRAVEL_BFGJUMP ; 
 int /*<<< orphan*/  TRAVEL_CROUCH ; 
 int /*<<< orphan*/  TRAVEL_DOUBLEJUMP ; 
 int /*<<< orphan*/  TRAVEL_ELEVATOR ; 
 int /*<<< orphan*/  TRAVEL_FUNCBOB ; 
 int /*<<< orphan*/  TRAVEL_GRAPPLEHOOK ; 
 int /*<<< orphan*/  TRAVEL_JUMP ; 
 int /*<<< orphan*/  TRAVEL_JUMPPAD ; 
 int /*<<< orphan*/  TRAVEL_LADDER ; 
 int /*<<< orphan*/  TRAVEL_RAMPJUMP ; 
 int /*<<< orphan*/  TRAVEL_ROCKETJUMP ; 
 int /*<<< orphan*/  TRAVEL_STRAFEJUMP ; 
 int /*<<< orphan*/  TRAVEL_SWIM ; 
 int /*<<< orphan*/  TRAVEL_TELEPORT ; 
 int /*<<< orphan*/  TRAVEL_WALK ; 
 int /*<<< orphan*/  TRAVEL_WALKOFFLEDGE ; 
 int /*<<< orphan*/  TRAVEL_WATERJUMP ; 
 TYPE_1__ aasworld ; 

void FUNC2(void)
{
	FUNC1("numvertexes = %d\r\n", aasworld.numvertexes);
	FUNC1("numplanes = %d\r\n", aasworld.numplanes);
	FUNC1("numedges = %d\r\n", aasworld.numedges);
	FUNC1("edgeindexsize = %d\r\n", aasworld.edgeindexsize);
	FUNC1("numfaces = %d\r\n", aasworld.numfaces);
	FUNC1("faceindexsize = %d\r\n", aasworld.faceindexsize);
	FUNC1("numareas = %d\r\n", aasworld.numareas);
	FUNC1("numareasettings = %d\r\n", aasworld.numareasettings);
	FUNC1("reachabilitysize = %d\r\n", aasworld.reachabilitysize);
	FUNC1("numnodes = %d\r\n", aasworld.numnodes);
	FUNC1("numportals = %d\r\n", aasworld.numportals);
	FUNC1("portalindexsize = %d\r\n", aasworld.portalindexsize);
	FUNC1("numclusters = %d\r\n", aasworld.numclusters);
	FUNC0(TRAVEL_WALK, "walk");
	FUNC0(TRAVEL_CROUCH, "crouch");
	FUNC0(TRAVEL_BARRIERJUMP, "barrier jump");
	FUNC0(TRAVEL_JUMP, "jump");
	FUNC0(TRAVEL_LADDER, "ladder");
	FUNC0(TRAVEL_WALKOFFLEDGE, "walk off ledge");
	FUNC0(TRAVEL_SWIM, "swim");
	FUNC0(TRAVEL_WATERJUMP, "water jump");
	FUNC0(TRAVEL_TELEPORT, "teleport");
	FUNC0(TRAVEL_ELEVATOR, "elevator");
	FUNC0(TRAVEL_ROCKETJUMP, "rocket jump");
	FUNC0(TRAVEL_BFGJUMP, "bfg jump");
	FUNC0(TRAVEL_GRAPPLEHOOK, "grapple hook");
	FUNC0(TRAVEL_DOUBLEJUMP, "double jump");
	FUNC0(TRAVEL_RAMPJUMP, "ramp jump");
	FUNC0(TRAVEL_STRAFEJUMP, "strafe jump");
	FUNC0(TRAVEL_JUMPPAD, "jump pad");
	FUNC0(TRAVEL_FUNCBOB, "func bob");
}