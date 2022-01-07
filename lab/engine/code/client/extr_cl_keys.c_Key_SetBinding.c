
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ binding; } ;


 int CVAR_ARCHIVE ;
 scalar_t__ CopyString (char const*) ;
 int MAX_KEYS ;
 int Z_Free (scalar_t__) ;
 int cvar_modifiedFlags ;
 TYPE_1__* keys ;

void Key_SetBinding( int keynum, const char *binding ) {
 if ( keynum < 0 || keynum >= MAX_KEYS ) {
  return;
 }


 if ( keys[ keynum ].binding ) {
  Z_Free( keys[ keynum ].binding );
 }


 keys[keynum].binding = CopyString( binding );



 cvar_modifiedFlags |= CVAR_ARCHIVE;
}
