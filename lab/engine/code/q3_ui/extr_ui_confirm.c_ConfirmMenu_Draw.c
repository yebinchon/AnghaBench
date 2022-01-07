
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* question; int style; int slashX; int (* draw ) () ;int menu; } ;


 int ART_CONFIRM_FRAME ;
 int Menu_Draw (int *) ;
 int UI_DrawNamedPic (int,int,int,int,int ) ;
 int UI_DrawProportionalString (int,int,char*,int,int ) ;
 int UI_INVERSE ;
 int UI_LEFT ;
 int color_white ;
 TYPE_1__ s_confirm ;
 int stub1 () ;

__attribute__((used)) static void ConfirmMenu_Draw( void ) {
 UI_DrawNamedPic( 142, 118, 359, 256, ART_CONFIRM_FRAME );
 UI_DrawProportionalString( 320, 204, s_confirm.question, s_confirm.style, color_white );
 UI_DrawProportionalString( s_confirm.slashX, 265, "/", UI_LEFT|UI_INVERSE, color_white );

 Menu_Draw( &s_confirm.menu );

 if( s_confirm.draw ) {
  s_confirm.draw();
 }
}
