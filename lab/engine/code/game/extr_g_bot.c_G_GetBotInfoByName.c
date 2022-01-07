
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Info_ValueForKey (char*,char*) ;
 int Q_stricmp (char*,char const*) ;
 char** g_botInfos ;
 int g_numBots ;

char *G_GetBotInfoByName( const char *name ) {
 int n;
 char *value;

 for ( n = 0; n < g_numBots ; n++ ) {
  value = Info_ValueForKey( g_botInfos[n], "name" );
  if ( !Q_stricmp( value, name ) ) {
   return g_botInfos[n];
  }
 }

 return ((void*)0);
}
