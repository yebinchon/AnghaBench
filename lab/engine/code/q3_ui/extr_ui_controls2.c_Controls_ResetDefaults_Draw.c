
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROP_HEIGHT ;
 int SCREEN_WIDTH ;
 int UI_CENTER ;
 int UI_DrawProportionalString (int,int,char*,int,int ) ;
 int UI_SMALLFONT ;
 int color_yellow ;

__attribute__((used)) static void Controls_ResetDefaults_Draw( void ) {
 UI_DrawProportionalString( SCREEN_WIDTH/2, 356 + PROP_HEIGHT * 0, "WARNING: This will reset all", UI_CENTER|UI_SMALLFONT, color_yellow );
 UI_DrawProportionalString( SCREEN_WIDTH/2, 356 + PROP_HEIGHT * 1, "controls to their default values.", UI_CENTER|UI_SMALLFONT, color_yellow );
}
