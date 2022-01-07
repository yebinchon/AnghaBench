
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef float* vec4_t ;
typedef int qboolean ;
typedef int color ;
struct TYPE_2__ {int (* SetColor ) (float*) ;} ;


 size_t ColorIndex (char const) ;
 int Com_Memcpy (float*,int ,int) ;
 scalar_t__ Q_IsColorString (char const*) ;
 int SCR_DrawSmallChar (int,int,char const) ;
 scalar_t__ SMALLCHAR_WIDTH ;
 int * g_color_table ;
 TYPE_1__ re ;
 int stub1 (float*) ;
 int stub2 (float*) ;
 int stub3 (float*) ;

void SCR_DrawSmallStringExt( int x, int y, const char *string, float *setColor, qboolean forceColor,
  qboolean noColorEscape ) {
 vec4_t color;
 const char *s;
 int xx;


 s = string;
 xx = x;
 re.SetColor( setColor );
 while ( *s ) {
  if ( Q_IsColorString( s ) ) {
   if ( !forceColor ) {
    Com_Memcpy( color, g_color_table[ColorIndex(*(s+1))], sizeof( color ) );
    color[3] = setColor[3];
    re.SetColor( color );
   }
   if ( !noColorEscape ) {
    s += 2;
    continue;
   }
  }
  SCR_DrawSmallChar( xx, y, *s );
  xx += SMALLCHAR_WIDTH;
  s++;
 }
 re.SetColor( ((void*)0) );
}
