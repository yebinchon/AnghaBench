#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {size_t description; } ;
struct TYPE_15__ {int teamCount; int aliasCount; TYPE_3__* aliasList; TYPE_2__* teamList; TYPE_1__* gameTypes; } ;
struct TYPE_14__ {size_t integer; } ;
struct TYPE_13__ {size_t integer; } ;
struct TYPE_12__ {size_t integer; } ;
struct TYPE_11__ {char* name; } ;
struct TYPE_10__ {int /*<<< orphan*/  teamName; } ;
struct TYPE_9__ {char* gameType; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*,float,int /*<<< orphan*/ ) ; 
#define  UI_ALLMAPS_SELECTION 152 
#define  UI_BLUETEAM1 151 
#define  UI_BLUETEAM2 150 
#define  UI_BLUETEAM3 149 
#define  UI_BLUETEAM4 148 
#define  UI_BLUETEAM5 147 
#define  UI_BLUETEAMNAME 146 
#define  UI_CLANNAME 145 
 char* FUNC3 (char*) ; 
#define  UI_GAMETYPE 144 
#define  UI_HANDICAP 143 
#define  UI_KEYBINDSTATUS 142 
#define  UI_NETFILTER 141 
#define  UI_NETSOURCE 140 
#define  UI_OPPONENT_NAME 139 
#define  UI_REDTEAM1 138 
#define  UI_REDTEAM2 137 
#define  UI_REDTEAM3 136 
#define  UI_REDTEAM4 135 
#define  UI_REDTEAM5 134 
#define  UI_REDTEAMNAME 133 
#define  UI_SERVERREFRESHDATE 132 
#define  UI_SKILL 131 
#define  UI_TIER 130 
#define  UI_TIER_GAMETYPE 129 
#define  UI_TIER_MAPNAME 128 
 int FUNC4 (char*) ; 
 char** handicapValues ; 
 size_t* netSources ; 
 size_t numNetSources ; 
 size_t numServerFilters ; 
 int numSkillLevels ; 
 TYPE_8__* serverFilters ; 
 char** skillLevels ; 
 int FUNC5 (char*) ; 
 TYPE_7__ uiInfo ; 
 TYPE_6__ ui_gameType ; 
 TYPE_5__ ui_netSource ; 
 TYPE_4__ ui_serverFilterType ; 
 char* FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(int ownerDraw, float scale) {
	int i, h, value;
	const char *text;
	const char *s = NULL;

  switch (ownerDraw) {
    case UI_HANDICAP:
			  h = FUNC0( 5, 100, FUNC5("handicap") );
				i = 20 - h / 5;
				s = handicapValues[i];
      break;
    case UI_CLANNAME:
				s = FUNC3("ui_teamName");
      break;
    case UI_GAMETYPE:
				s = uiInfo.gameTypes[ui_gameType.integer].gameType;
      break;
    case UI_SKILL:
				i = FUNC5( "g_spSkill" );
				if (i < 1 || i > numSkillLevels) {
					i = 1;
				}
			  s = skillLevels[i-1];
      break;
    case UI_BLUETEAMNAME:
			  i = FUNC4(FUNC3("ui_blueTeam"));
			  if (i >= 0 && i < uiInfo.teamCount) {
			    s = FUNC6("%s: %s", "Blue", uiInfo.teamList[i].teamName);
			  }
      break;
    case UI_REDTEAMNAME:
			  i = FUNC4(FUNC3("ui_redTeam"));
			  if (i >= 0 && i < uiInfo.teamCount) {
			    s = FUNC6("%s: %s", "Red", uiInfo.teamList[i].teamName);
			  }
      break;
    case UI_BLUETEAM1:
		case UI_BLUETEAM2:
		case UI_BLUETEAM3:
		case UI_BLUETEAM4:
		case UI_BLUETEAM5:
			value = FUNC5(FUNC6("ui_blueteam%i", ownerDraw-UI_BLUETEAM1 + 1));
			if (value <= 0) {
				text = "Closed";
			} else if (value == 1) {
				text = "Human";
			} else {
				value -= 2;
				if (value >= uiInfo.aliasCount) {
					value = 0;
				}
				text = uiInfo.aliasList[value].name;
			}
			s = FUNC6("%i. %s", ownerDraw-UI_BLUETEAM1 + 1, text);
      break;
    case UI_REDTEAM1:
		case UI_REDTEAM2:
		case UI_REDTEAM3:
		case UI_REDTEAM4:
		case UI_REDTEAM5:
			value = FUNC5(FUNC6("ui_redteam%i", ownerDraw-UI_REDTEAM1 + 1));
			if (value <= 0) {
				text = "Closed";
			} else if (value == 1) {
				text = "Human";
			} else {
				value -= 2;
				if (value >= uiInfo.aliasCount) {
					value = 0;
				}
				text = uiInfo.aliasList[value].name;
			}
			s = FUNC6("%i. %s", ownerDraw-UI_REDTEAM1 + 1, text);
      break;
		case UI_NETSOURCE:
			if (ui_netSource.integer < 0 || ui_netSource.integer >= numNetSources) {
				ui_netSource.integer = 0;
			}
			s = FUNC6("Source: %s", netSources[ui_netSource.integer]);
			break;
		case UI_NETFILTER:
			if (ui_serverFilterType.integer < 0 || ui_serverFilterType.integer >= numServerFilters) {
				ui_serverFilterType.integer = 0;
			}
			s = FUNC6("Filter: %s", serverFilters[ui_serverFilterType.integer].description );
			break;
		case UI_TIER:
			break;
		case UI_TIER_MAPNAME:
			break;
		case UI_TIER_GAMETYPE:
			break;
		case UI_ALLMAPS_SELECTION:
			break;
		case UI_OPPONENT_NAME:
			break;
		case UI_KEYBINDSTATUS:
			if (FUNC1()) {
				s = "Waiting for new key... Press ESCAPE to cancel";
			} else {
				s = "Press ENTER or CLICK to change, Press BACKSPACE to clear";
			}
			break;
		case UI_SERVERREFRESHDATE:
			s = FUNC3(FUNC6("ui_lastServerRefresh_%i", ui_netSource.integer));
			break;
    default:
      break;
  }

	if (s) {
		return FUNC2(s, scale, 0);
	}
	return 0;
}