
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int name ;
struct TYPE_2__ {char** placeNames; scalar_t__* clientNums; } ;


 scalar_t__ CS_PLAYERS ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int Q_CleanStr (char*) ;
 int Q_strncpyz (char*,char*,int) ;
 int UI_ProportionalStringWidth (char*) ;
 TYPE_1__ postgameMenuInfo ;
 int strlen (char*) ;
 int trap_GetConfigString (scalar_t__,char*,int) ;

__attribute__((used)) static void Prepname( int index ) {
 int len;
 char name[64];
 char info[MAX_INFO_STRING];

 trap_GetConfigString( CS_PLAYERS + postgameMenuInfo.clientNums[index], info, MAX_INFO_STRING );
 Q_strncpyz( name, Info_ValueForKey( info, "n" ), sizeof(name) );
 Q_CleanStr( name );
 len = strlen( name );

 while( len && UI_ProportionalStringWidth( name ) > 256 ) {
  len--;
  name[len] = 0;
 }

 Q_strncpyz( postgameMenuInfo.placeNames[index], name, sizeof(postgameMenuInfo.placeNames[index]) );
}
