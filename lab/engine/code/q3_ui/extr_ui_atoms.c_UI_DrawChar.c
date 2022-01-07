
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;


 int UI_DrawString (int,int,char*,int,int ) ;

void UI_DrawChar( int x, int y, int ch, int style, vec4_t color )
{
 char buff[2];

 buff[0] = ch;
 buff[1] = '\0';

 UI_DrawString( x, y, buff, style, color );
}
