
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ skillIndex; } ;


 int UI_SelectForKey (int) ;
 scalar_t__ numSkillLevels ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static qboolean UI_BotSkill_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  uiInfo.skillIndex += select;

  if (uiInfo.skillIndex >= numSkillLevels) {
   uiInfo.skillIndex = 0;
  } else if (uiInfo.skillIndex < 0) {
   uiInfo.skillIndex = numSkillLevels-1;
  }
  return qtrue;
 }
 return qfalse;
}
