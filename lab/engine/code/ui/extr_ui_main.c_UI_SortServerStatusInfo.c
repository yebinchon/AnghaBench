
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numLines; char*** lines; } ;
typedef TYPE_1__ serverStatusInfo_t ;
struct TYPE_5__ {char* altName; scalar_t__ name; } ;


 int Q_stricmp (scalar_t__,char*) ;
 TYPE_2__* serverStatusCvars ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void UI_SortServerStatusInfo( serverStatusInfo_t *info ) {
 int i, j, index;
 char *tmp1, *tmp2;




 index = 0;
 for (i = 0; serverStatusCvars[i].name; i++) {
  for (j = 0; j < info->numLines; j++) {
   if ( !info->lines[j][1] || info->lines[j][1][0] ) {
    continue;
   }
   if ( !Q_stricmp(serverStatusCvars[i].name, info->lines[j][0]) ) {

    tmp1 = info->lines[index][0];
    tmp2 = info->lines[index][3];
    info->lines[index][0] = info->lines[j][0];
    info->lines[index][3] = info->lines[j][3];
    info->lines[j][0] = tmp1;
    info->lines[j][3] = tmp2;

    if ( strlen(serverStatusCvars[i].altName) ) {
     info->lines[index][0] = serverStatusCvars[i].altName;
    }
    index++;
   }
  }
 }
}
