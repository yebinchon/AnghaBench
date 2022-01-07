
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec4_t ;
struct TYPE_5__ {float vidHeight; scalar_t__ vidWidth; } ;
struct TYPE_8__ {TYPE_1__ glconfig; int consoleShader; } ;
struct TYPE_7__ {int vislines; int display; int current; int linewidth; scalar_t__ x; int totallines; short* text; scalar_t__ xadjust; } ;
struct TYPE_6__ {int (* SetColor ) (int *) ;} ;


 int COLOR_RED ;
 size_t ColorIndex (int ) ;
 int ColorIndexForNumber (short) ;
 int Con_DrawInput () ;
 short* Q3_VERSION ;
 float SCREEN_HEIGHT ;
 int SCREEN_WIDTH ;
 int SCR_AdjustFrom640 (scalar_t__*,int *,int *,int *) ;
 int SCR_DrawPic (int ,int ,int ,int,int ) ;
 int SCR_DrawSmallChar (scalar_t__,int,short) ;
 int SCR_FillRect (int ,int,int ,int,int*) ;
 int SMALLCHAR_HEIGHT ;
 int SMALLCHAR_WIDTH ;
 TYPE_4__ cls ;
 TYPE_3__ con ;
 int ** g_color_table ;
 TYPE_2__ re ;
 int strlen (short*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int stub4 (int *) ;
 int stub5 (int *) ;

void Con_DrawSolidConsole( float frac ) {
 int i, x, y;
 int rows;
 short *text;
 int row;
 int lines;

 int currentColor;
 vec4_t color;

 lines = cls.glconfig.vidHeight * frac;
 if (lines <= 0)
  return;

 if (lines > cls.glconfig.vidHeight )
  lines = cls.glconfig.vidHeight;


 con.xadjust = 0;
 SCR_AdjustFrom640( &con.xadjust, ((void*)0), ((void*)0), ((void*)0) );


 y = frac * SCREEN_HEIGHT;
 if ( y < 1 ) {
  y = 0;
 }
 else {
  SCR_DrawPic( 0, 0, SCREEN_WIDTH, y, cls.consoleShader );
 }

 color[0] = 1;
 color[1] = 0;
 color[2] = 0;
 color[3] = 1;
 SCR_FillRect( 0, y, SCREEN_WIDTH, 2, color );




 re.SetColor( g_color_table[ColorIndex(COLOR_RED)] );

 i = strlen( Q3_VERSION );

 for (x=0 ; x<i ; x++) {
  SCR_DrawSmallChar( cls.glconfig.vidWidth - ( i - x + 1 ) * SMALLCHAR_WIDTH,
   lines - SMALLCHAR_HEIGHT, Q3_VERSION[x] );
 }



 con.vislines = lines;
 rows = (lines-SMALLCHAR_HEIGHT)/SMALLCHAR_HEIGHT;

 y = lines - (SMALLCHAR_HEIGHT*3);


 if (con.display != con.current)
 {

  re.SetColor( g_color_table[ColorIndex(COLOR_RED)] );
  for (x=0 ; x<con.linewidth ; x+=4)
   SCR_DrawSmallChar( con.xadjust + (x+1)*SMALLCHAR_WIDTH, y, '^' );
  y -= SMALLCHAR_HEIGHT;
  rows--;
 }

 row = con.display;

 if ( con.x == 0 ) {
  row--;
 }

 currentColor = 7;
 re.SetColor( g_color_table[currentColor] );

 for (i=0 ; i<rows ; i++, y -= SMALLCHAR_HEIGHT, row--)
 {
  if (row < 0)
   break;
  if (con.current - row >= con.totallines) {

   continue;
  }

  text = con.text + (row % con.totallines)*con.linewidth;

  for (x=0 ; x<con.linewidth ; x++) {
   if ( ( text[x] & 0xff ) == ' ' ) {
    continue;
   }

   if ( ColorIndexForNumber( text[x]>>8 ) != currentColor ) {
    currentColor = ColorIndexForNumber( text[x]>>8 );
    re.SetColor( g_color_table[currentColor] );
   }
   SCR_DrawSmallChar( con.xadjust + (x+1)*SMALLCHAR_WIDTH, y, text[x] & 0xff );
  }
 }


 Con_DrawInput ();

 re.SetColor( ((void*)0) );
}
