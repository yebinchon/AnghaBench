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
 int /*<<< orphan*/  EXEC_INSERT ; 
 int TEAM_BLUE ; 
 int TEAM_RED ; 
 float FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,float,char*,int /*<<< orphan*/ ) ; 

void FUNC3( int team ) {
	char	*teamstr;
	float	skill;

	skill = FUNC0( "g_spSkill" );
	if (team == TEAM_RED) teamstr = "red";
	else if (team == TEAM_BLUE) teamstr = "blue";
	else teamstr = "free";
	FUNC1( EXEC_INSERT, FUNC2("addbot random %f %s %i\n", skill, teamstr, 0) );
}