
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* centerPrint; int centerPrintY; int centerPrintLines; int centerPrintCharWidth; int centerPrintTime; } ;
struct TYPE_3__ {int value; } ;


 int BIGCHAR_HEIGHT ;
 int CG_DrawStringExt (int,int,char*,float*,int ,int ,int,int,int ) ;
 int CG_DrawStrlen (char*) ;
 float* CG_FadeColor (int ,int) ;
 int CG_Text_Height (char*,double,int ) ;
 int CG_Text_Paint (int,int,double,float*,char*,int ,int ,int ) ;
 int CG_Text_Width (char*,double,int ) ;
 int ITEM_TEXTSTYLE_SHADOWEDMORE ;
 int SCREEN_WIDTH ;
 TYPE_2__ cg ;
 TYPE_1__ cg_centertime ;
 int qfalse ;
 int qtrue ;
 int trap_R_SetColor (float*) ;

__attribute__((used)) static void CG_DrawCenterString( void ) {
 char *start;
 int l;
 int x, y, w;



 float *color;

 if ( !cg.centerPrintTime ) {
  return;
 }

 color = CG_FadeColor( cg.centerPrintTime, 1000 * cg_centertime.value );
 if ( !color ) {
  return;
 }

 trap_R_SetColor( color );

 start = cg.centerPrint;

 y = cg.centerPrintY - cg.centerPrintLines * BIGCHAR_HEIGHT / 2;

 while ( 1 ) {
  char linebuffer[1024];

  for ( l = 0; l < 50; l++ ) {
   if ( !start[l] || start[l] == '\n' ) {
    break;
   }
   linebuffer[l] = start[l];
  }
  linebuffer[l] = 0;
  w = cg.centerPrintCharWidth * CG_DrawStrlen( linebuffer );

  x = ( SCREEN_WIDTH - w ) / 2;

  CG_DrawStringExt( x, y, linebuffer, color, qfalse, qtrue,
   cg.centerPrintCharWidth, (int)(cg.centerPrintCharWidth * 1.5), 0 );

  y += cg.centerPrintCharWidth * 1.5;

  while ( *start && ( *start != '\n' ) ) {
   start++;
  }
  if ( !*start ) {
   break;
  }
  start++;
 }

 trap_R_SetColor( ((void*)0) );
}
