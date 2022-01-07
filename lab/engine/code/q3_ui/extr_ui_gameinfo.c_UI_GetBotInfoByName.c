
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Info_ValueForKey (char*,char*) ;
 int Q_stricmp (char*,char const*) ;
 char** ui_botInfos ;
 int ui_numBots ;

char *UI_GetBotInfoByName( const char *name ) {
 int n;
 char *value;

 for ( n = 0; n < ui_numBots ; n++ ) {
  value = Info_ValueForKey( ui_botInfos[n], "name" );
  if ( !Q_stricmp( value, name ) ) {
   return ui_botInfos[n];
  }
 }

 return ((void*)0);
}
