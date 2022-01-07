
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int curvalue; } ;
struct TYPE_4__ {char** itemnames; size_t curvalue; } ;
struct TYPE_6__ {size_t selectedBotNum; int delay; int * botnames; TYPE_2__ skill; TYPE_1__ team; } ;


 int EXEC_APPEND ;
 int QM_ACTIVATED ;
 TYPE_3__ addBotsMenuInfo ;
 int trap_Cmd_ExecuteText (int ,int ) ;
 int va (char*,int ,int,char const*,int) ;

__attribute__((used)) static void UI_AddBotsMenu_FightEvent( void* ptr, int event ) {
 const char *team;
 int skill;

 if (event != QM_ACTIVATED) {
  return;
 }

 team = addBotsMenuInfo.team.itemnames[addBotsMenuInfo.team.curvalue];
 skill = addBotsMenuInfo.skill.curvalue + 1;

 trap_Cmd_ExecuteText( EXEC_APPEND, va("addbot %s %i %s %i\n",
  addBotsMenuInfo.botnames[addBotsMenuInfo.selectedBotNum], skill, team, addBotsMenuInfo.delay) );

 addBotsMenuInfo.delay += 1500;
}
