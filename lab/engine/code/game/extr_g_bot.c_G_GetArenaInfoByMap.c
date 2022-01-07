
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Info_ValueForKey (char const*,char*) ;
 scalar_t__ Q_stricmp (int ,char const*) ;
 char const** g_arenaInfos ;
 int g_numArenas ;

const char *G_GetArenaInfoByMap( const char *map ) {
 int n;

 for( n = 0; n < g_numArenas; n++ ) {
  if( Q_stricmp( Info_ValueForKey( g_arenaInfos[n], "map" ), map ) == 0 ) {
   return g_arenaInfos[n];
  }
 }

 return ((void*)0);
}
