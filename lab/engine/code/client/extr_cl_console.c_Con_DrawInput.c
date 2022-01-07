
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int vislines; scalar_t__ xadjust; int color; } ;
struct TYPE_4__ {int (* SetColor ) (int ) ;} ;


 scalar_t__ CA_DISCONNECTED ;
 int Field_Draw (int *,scalar_t__,int,scalar_t__,int ,int ) ;
 int KEYCATCH_CONSOLE ;
 int Key_GetCatcher () ;
 scalar_t__ SCREEN_WIDTH ;
 int SCR_DrawSmallChar (scalar_t__,int,char) ;
 int SMALLCHAR_HEIGHT ;
 int SMALLCHAR_WIDTH ;
 TYPE_3__ clc ;
 TYPE_2__ con ;
 int g_consoleField ;
 int qtrue ;
 TYPE_1__ re ;
 int stub1 (int ) ;

void Con_DrawInput (void) {
 int y;

 if ( clc.state != CA_DISCONNECTED && !(Key_GetCatcher( ) & KEYCATCH_CONSOLE ) ) {
  return;
 }

 y = con.vislines - ( SMALLCHAR_HEIGHT * 2 );

 re.SetColor( con.color );

 SCR_DrawSmallChar( con.xadjust + 1 * SMALLCHAR_WIDTH, y, ']' );

 Field_Draw( &g_consoleField, con.xadjust + 2 * SMALLCHAR_WIDTH, y,
  SCREEN_WIDTH - 3 * SMALLCHAR_WIDTH, qtrue, qtrue );
}
