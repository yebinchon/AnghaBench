
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int hex ;


 int Com_HexStrToInt (char*) ;
 int Q_strncpyz (char*,char const*,int) ;
 int qfalse ;
 int qtrue ;

qboolean Com_FieldStringToPlayerName( char *name, int length, const char *rawname )
{
 char hex[5];
 int i;
 int ch;

 if( name == ((void*)0) || rawname == ((void*)0) )
  return qfalse;

 if( length <= 0 )
  return qtrue;

 for( i = 0; *rawname && i + 1 <= length; rawname++, i++ ) {
  if( *rawname == '\\' ) {
   Q_strncpyz( hex, rawname + 1, sizeof(hex) );
   ch = Com_HexStrToInt( hex );
   if( ch > -1 ) {
    name[i] = ch;
    rawname += 4;
   } else {
    name[i] = *rawname;
   }
  } else {
   name[i] = *rawname;
  }
 }
 name[i] = '\0';

 return qtrue;
}
