
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double ARRAY_LEN (char const**) ;
 double PROP_HEIGHT ;
 double PROP_SMALL_SIZE_SCALE ;
 double SCREEN_HEIGHT ;
 int UI_BIGFONT ;
 int UI_CENTER ;
 int UI_DrawProportionalString (int,int,char const*,int,int ) ;
 int UI_DrawString (int,int,char*,int,int ) ;
 int UI_SMALLFONT ;
 int color_black ;
 int color_blue ;

__attribute__((used)) static void UI_CreditMenu_Draw_deepmind( void ) {
 int y;
 int i;


 static const char *names[] = {
  "DeepMind Team",
  ((void*)0)
 };


 y = (SCREEN_HEIGHT - ARRAY_LEN(names) * (1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE)) / 2;

 y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;

 for (i = 0; names[i]; i++) {
  UI_DrawProportionalString( 320, y, names[i], UI_CENTER|UI_BIGFONT, color_black );
  y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
 }

 UI_DrawString( 320, 459, "www.deepmind.com", UI_CENTER|UI_SMALLFONT, color_blue );
}
