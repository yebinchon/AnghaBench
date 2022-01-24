#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_3__ {int time; int /*<<< orphan*/  captures; int /*<<< orphan*/  shutoutBonus; int /*<<< orphan*/  skillBonus; int /*<<< orphan*/  timeBonus; int /*<<< orphan*/  baseScore; int /*<<< orphan*/  blueScore; int /*<<< orphan*/  redScore; int /*<<< orphan*/  perfects; int /*<<< orphan*/  score; int /*<<< orphan*/  gauntlets; int /*<<< orphan*/  assists; int /*<<< orphan*/  defends; int /*<<< orphan*/  excellents; int /*<<< orphan*/  impressives; int /*<<< orphan*/  accuracy; } ;
typedef  TYPE_1__ postGameInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 

void FUNC2(postGameInfo_t *newInfo, qboolean postGame) {
	FUNC0("ui_scoreAccuracy",     FUNC1("%i%%", newInfo->accuracy));
	FUNC0("ui_scoreImpressives",	FUNC1("%i", newInfo->impressives));
	FUNC0("ui_scoreExcellents", 	FUNC1("%i", newInfo->excellents));
	FUNC0("ui_scoreDefends", 			FUNC1("%i", newInfo->defends));
	FUNC0("ui_scoreAssists", 			FUNC1("%i", newInfo->assists));
	FUNC0("ui_scoreGauntlets", 		FUNC1("%i", newInfo->gauntlets));
	FUNC0("ui_scoreScore", 				FUNC1("%i", newInfo->score));
	FUNC0("ui_scorePerfect",	 		FUNC1("%i", newInfo->perfects));
	FUNC0("ui_scoreTeam",					FUNC1("%i to %i", newInfo->redScore, newInfo->blueScore));
	FUNC0("ui_scoreBase",					FUNC1("%i", newInfo->baseScore));
	FUNC0("ui_scoreTimeBonus",		FUNC1("%i", newInfo->timeBonus));
	FUNC0("ui_scoreSkillBonus",		FUNC1("%i", newInfo->skillBonus));
	FUNC0("ui_scoreShutoutBonus",	FUNC1("%i", newInfo->shutoutBonus));
	FUNC0("ui_scoreTime",					FUNC1("%02i:%02i", newInfo->time / 60, newInfo->time % 60));
	FUNC0("ui_scoreCaptures",		FUNC1("%i", newInfo->captures));
  if (postGame) {
		FUNC0("ui_scoreAccuracy2",     FUNC1("%i%%", newInfo->accuracy));
		FUNC0("ui_scoreImpressives2",	FUNC1("%i", newInfo->impressives));
		FUNC0("ui_scoreExcellents2", 	FUNC1("%i", newInfo->excellents));
		FUNC0("ui_scoreDefends2", 			FUNC1("%i", newInfo->defends));
		FUNC0("ui_scoreAssists2", 			FUNC1("%i", newInfo->assists));
		FUNC0("ui_scoreGauntlets2", 		FUNC1("%i", newInfo->gauntlets));
		FUNC0("ui_scoreScore2", 				FUNC1("%i", newInfo->score));
		FUNC0("ui_scorePerfect2",	 		FUNC1("%i", newInfo->perfects));
		FUNC0("ui_scoreTeam2",					FUNC1("%i to %i", newInfo->redScore, newInfo->blueScore));
		FUNC0("ui_scoreBase2",					FUNC1("%i", newInfo->baseScore));
		FUNC0("ui_scoreTimeBonus2",		FUNC1("%i", newInfo->timeBonus));
		FUNC0("ui_scoreSkillBonus2",		FUNC1("%i", newInfo->skillBonus));
		FUNC0("ui_scoreShutoutBonus2",	FUNC1("%i", newInfo->shutoutBonus));
		FUNC0("ui_scoreTime2",					FUNC1("%02i:%02i", newInfo->time / 60, newInfo->time % 60));
		FUNC0("ui_scoreCaptures2",		FUNC1("%i", newInfo->captures));
	}
}