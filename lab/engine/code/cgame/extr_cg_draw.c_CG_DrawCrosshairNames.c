
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {size_t crosshairClientNum; int crosshairClientTime; scalar_t__ renderingThirdPerson; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clientinfo; } ;
struct TYPE_6__ {char* name; } ;


 float BIGCHAR_WIDTH ;
 int CG_DrawBigString (int,int,char*,float) ;
 float CG_DrawStrlen (char*) ;
 float* CG_FadeColor (int ,int) ;
 int CG_ScanForCrosshairEntity () ;
 int CG_Text_Paint (int,int,float,float*,char*,int ,int ,int ) ;
 float CG_Text_Width (char*,float,int ) ;
 int ITEM_TEXTSTYLE_SHADOWED ;
 TYPE_5__ cg ;
 TYPE_4__ cg_drawCrosshair ;
 TYPE_3__ cg_drawCrosshairNames ;
 TYPE_2__ cgs ;
 int trap_R_SetColor (int *) ;

__attribute__((used)) static void CG_DrawCrosshairNames( void ) {
 float *color;
 char *name;
 float w;

 if ( !cg_drawCrosshair.integer ) {
  return;
 }
 if ( !cg_drawCrosshairNames.integer ) {
  return;
 }
 if ( cg.renderingThirdPerson ) {
  return;
 }


 CG_ScanForCrosshairEntity();


 color = CG_FadeColor( cg.crosshairClientTime, 1000 );
 if ( !color ) {
  trap_R_SetColor( ((void*)0) );
  return;
 }

 name = cgs.clientinfo[ cg.crosshairClientNum ].name;





 w = CG_DrawStrlen( name ) * BIGCHAR_WIDTH;
 CG_DrawBigString( 320 - w / 2, 170, name, color[3] * 0.5f );

 trap_R_SetColor( ((void*)0) );
}
