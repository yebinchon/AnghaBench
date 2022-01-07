
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {double displayFrac; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_DISCONNECTED ;
 int Con_CheckResize () ;
 int Con_DrawNotify () ;
 int Con_DrawSolidConsole (double) ;
 int KEYCATCH_CGAME ;
 int KEYCATCH_UI ;
 int Key_GetCatcher () ;
 TYPE_2__ clc ;
 TYPE_1__ con ;

void Con_DrawConsole( void ) {

 Con_CheckResize ();


 if ( clc.state == CA_DISCONNECTED ) {
  if ( !( Key_GetCatcher( ) & (KEYCATCH_UI | KEYCATCH_CGAME)) ) {
   Con_DrawSolidConsole( 1.0 );
   return;
  }
 }

 if ( con.displayFrac ) {
  Con_DrawSolidConsole( con.displayFrac );
 } else {

  if ( clc.state == CA_ACTIVE ) {
   Con_DrawNotify ();
  }
 }
}
