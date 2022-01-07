
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {int widthInChars; } ;


 scalar_t__ CA_DISCONNECTED ;
 int Con_ClearNotify () ;
 int Field_Clear (TYPE_1__*) ;
 int KEYCATCH_CONSOLE ;
 int Key_GetCatcher () ;
 int Key_SetCatcher (int) ;
 TYPE_3__ clc ;
 TYPE_2__* con_autoclear ;
 TYPE_1__ g_consoleField ;
 int g_console_field_width ;

void Con_ToggleConsole_f (void) {

 if ( clc.state == CA_DISCONNECTED && Key_GetCatcher( ) == KEYCATCH_CONSOLE ) {
  return;
 }

 if ( con_autoclear->integer ) {
  Field_Clear( &g_consoleField );
 }

 g_consoleField.widthInChars = g_console_field_width;

 Con_ClearNotify ();
 Key_SetCatcher( Key_GetCatcher( ) ^ KEYCATCH_CONSOLE );
}
