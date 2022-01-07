
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float member_0; float member_1; float member_2; float member_3; } ;
typedef TYPE_1__ vec4_t ;


 scalar_t__ BIGCHAR_HEIGHT ;
 int BIGCHAR_WIDTH ;
 int CG_DrawStringExt (int,int,char*,TYPE_1__,int ,int,int,scalar_t__,int ) ;
 int CG_DrawStrlen (char*) ;
 int SCREEN_HEIGHT ;
 int SCREEN_WIDTH ;
 int dmlab_get_screen_message (int,char*,int*,int*,int*,int*,TYPE_1__) ;
 int dmlab_make_screen_messages (int ,int ,scalar_t__,int) ;
 int qfalse ;

__attribute__((used)) static void CG_DrawScriptMessage( void ) {
 char s[80];
 int c = 0;
 int i, x = 0, y = 0, align_l0_r1_c2 = 0;
 int shadow = 1;
 vec4_t rgba = {1.0f, 1.0f, 1.0f, 1.0f};
 c = dmlab_make_screen_messages(
   SCREEN_WIDTH, SCREEN_HEIGHT, BIGCHAR_HEIGHT + 4, 80 );
 for (i = 0; i < c; ++i) {
  dmlab_get_screen_message( i, s, &x, &y, &align_l0_r1_c2, &shadow, rgba );
  y = y + 2;
  switch (align_l0_r1_c2) {
   case 0:
    break;
   case 1:
    x -= CG_DrawStrlen( s ) * BIGCHAR_WIDTH;
    break;
   case 2:
   default:
    x -= CG_DrawStrlen( s ) * BIGCHAR_WIDTH / 2;
    break;
  }
  CG_DrawStringExt(
    x, y, s, rgba,
                   qfalse,
               shadow != 0,
    BIGCHAR_WIDTH, BIGCHAR_HEIGHT,
                 0 );
 }
}
