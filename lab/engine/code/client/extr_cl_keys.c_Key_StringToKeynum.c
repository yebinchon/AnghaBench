
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keynum; scalar_t__ name; } ;
typedef TYPE_1__ keyname_t ;


 int Com_HexStrToInt (char*) ;
 int Q_stricmp (char*,scalar_t__) ;
 TYPE_1__* keynames ;
 int strlen (char*) ;
 int tolower (char) ;

int Key_StringToKeynum( char *str ) {
 keyname_t *kn;

 if ( !str || !str[0] ) {
  return -1;
 }
 if ( !str[1] ) {
  return tolower( str[0] );
 }


 if ( strlen( str ) == 4 ) {
  int n = Com_HexStrToInt( str );

  if ( n >= 0 ) {
   return n;
  }
 }


 for ( kn=keynames ; kn->name ; kn++ ) {
  if ( !Q_stricmp( str,kn->name ) )
   return kn->keynum;
 }

 return -1;
}
