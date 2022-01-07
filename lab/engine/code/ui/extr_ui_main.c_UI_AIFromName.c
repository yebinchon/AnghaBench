
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int aliasCount; TYPE_1__* aliasList; } ;
struct TYPE_3__ {char const* ai; int name; } ;


 scalar_t__ Q_stricmp (int ,char const*) ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static const char *UI_AIFromName(const char *name) {
 int j;
 for (j = 0; j < uiInfo.aliasCount; j++) {
  if (Q_stricmp(uiInfo.aliasList[j].name, name) == 0) {
   return uiInfo.aliasList[j].ai;
  }
 }
 return "James";
}
