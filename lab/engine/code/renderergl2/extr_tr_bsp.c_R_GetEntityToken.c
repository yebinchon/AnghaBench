
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ entityString; scalar_t__ entityParsePoint; } ;


 char* COM_Parse (scalar_t__*) ;
 int Q_strncpyz (char*,char const*,int) ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ s_worldData ;

qboolean R_GetEntityToken( char *buffer, int size ) {
 const char *s;

 s = COM_Parse( &s_worldData.entityParsePoint );
 Q_strncpyz( buffer, s, size );
 if ( !s_worldData.entityParsePoint && !s[0] ) {
  s_worldData.entityParsePoint = s_worldData.entityString;
  return qfalse;
 } else {
  return qtrue;
 }
}
