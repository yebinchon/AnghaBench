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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_4__ {size_t teamCount; TYPE_1__* teamList; } ;
struct TYPE_3__ {char const* teamName; char const* imageName; int cinematic; char const** teamMembers; void* teamIcon_Name; void* teamIcon_Metal; void* teamIcon; } ;

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t MAX_TEAMS ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,char const**) ; 
 int TEAM_MEMBERS ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 void* FUNC4 (char const*) ; 
 TYPE_2__ uiInfo ; 
 char const* FUNC5 (char*,char const*) ; 

__attribute__((used)) static qboolean FUNC6(char **p) {
  char *token;
  const char *tempStr;
	int i;

  token = FUNC0(p, qtrue);

  if (token[0] != '{') {
    return qfalse;
  }

  while ( 1 ) {

    token = FUNC0(p, qtrue);
    
    if (FUNC2(token, "}") == 0) {
      return qtrue;
    }

    if (!token[0]) {
      return qfalse;
    }

    if (token[0] == '{') {
      if (uiInfo.teamCount == MAX_TEAMS) {
        uiInfo.teamCount--;
        FUNC1("Too many teams, last team replaced!\n");
      }

      // seven tokens per line, team name and icon, and 5 team member names
      if (!FUNC3(p, &uiInfo.teamList[uiInfo.teamCount].teamName) || !FUNC3(p, &tempStr)) {
        return qfalse;
      }
    

			uiInfo.teamList[uiInfo.teamCount].imageName = tempStr;
	    uiInfo.teamList[uiInfo.teamCount].teamIcon = FUNC4(uiInfo.teamList[uiInfo.teamCount].imageName);
		  uiInfo.teamList[uiInfo.teamCount].teamIcon_Metal = FUNC4(FUNC5("%s_metal",uiInfo.teamList[uiInfo.teamCount].imageName));
			uiInfo.teamList[uiInfo.teamCount].teamIcon_Name = FUNC4(FUNC5("%s_name", uiInfo.teamList[uiInfo.teamCount].imageName));

			uiInfo.teamList[uiInfo.teamCount].cinematic = -1;

			for (i = 0; i < TEAM_MEMBERS; i++) {
				uiInfo.teamList[uiInfo.teamCount].teamMembers[i] = NULL;
				if (!FUNC3(p, &uiInfo.teamList[uiInfo.teamCount].teamMembers[i])) {
					return qfalse;
				}
			}

      FUNC1("Loaded team %s with team icon %s.\n", uiInfo.teamList[uiInfo.teamCount].teamName, tempStr);
      uiInfo.teamCount++;

      token = FUNC0(p, qtrue);
      if (token[0] != '}') {
        return qfalse;
      }
    }
  }

  return qfalse;
}