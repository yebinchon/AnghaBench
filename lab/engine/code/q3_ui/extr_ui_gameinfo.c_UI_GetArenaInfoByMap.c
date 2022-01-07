
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Info_ValueForKey (char const*,char*) ;
 scalar_t__ Q_stricmp (int ,char const*) ;
 char const** ui_arenaInfos ;
 int ui_numArenas ;

const char *UI_GetArenaInfoByMap( const char *map ) {
 int n;

 for( n = 0; n < ui_numArenas; n++ ) {
  if( Q_stricmp( Info_ValueForKey( ui_arenaInfos[n], "map" ), map ) == 0 ) {
   return ui_arenaInfos[n];
  }
 }

 return ((void*)0);
}
