
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* draw ) () ;int menu; int style; scalar_t__* lines; } ;


 int ART_CONFIRM_FRAME ;
 int Menu_Draw (int *) ;
 int UI_DrawNamedPic (int,int,int,int,int ) ;
 int UI_DrawProportionalString (int,int,scalar_t__,int ,int ) ;
 int color_white ;
 TYPE_1__ s_confirm ;
 int stub1 () ;

__attribute__((used)) static void MessageMenu_Draw( void ) {
 int i,y;

 UI_DrawNamedPic( 142, 118, 359, 256, ART_CONFIRM_FRAME );

 y = 188;
 for(i=0; s_confirm.lines[i]; i++)
 {
  UI_DrawProportionalString( 320, y, s_confirm.lines[i], s_confirm.style, color_white );
  y += 18;
 }

 Menu_Draw( &s_confirm.menu );

 if( s_confirm.draw ) {
  s_confirm.draw();
 }
}
