
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIGCHAR_HEIGHT ;
 int BIGCHAR_WIDTH ;
 int UI_DrawRect (int,int,int,int,int ) ;
 int UI_FillRect (int,int,int,int,int ) ;
 int colorBlack ;
 int colorWhite ;

void UI_DrawTextBox (int x, int y, int width, int lines)
{
 UI_FillRect( x + BIGCHAR_WIDTH/2, y + BIGCHAR_HEIGHT/2, ( width + 1 ) * BIGCHAR_WIDTH, ( lines + 1 ) * BIGCHAR_HEIGHT, colorBlack );
 UI_DrawRect( x + BIGCHAR_WIDTH/2, y + BIGCHAR_HEIGHT/2, ( width + 1 ) * BIGCHAR_WIDTH, ( lines + 1 ) * BIGCHAR_HEIGHT, colorWhite );
}
