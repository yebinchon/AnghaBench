
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* binding; } ;


 int Com_Printf (char*,int ,scalar_t__*) ;
 int Key_KeynumToString (int) ;
 int MAX_KEYS ;
 TYPE_1__* keys ;

void Key_Bindlist_f( void ) {
 int i;

 for ( i = 0 ; i < MAX_KEYS ; i++ ) {
  if ( keys[i].binding && keys[i].binding[0] ) {
   Com_Printf( "%s \"%s\"\n", Key_KeynumToString(i), keys[i].binding );
  }
 }
}
