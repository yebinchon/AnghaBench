
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {double member_0; int member_3; int member_2; int member_1; } ;
typedef TYPE_1__ vec4_t ;
typedef int* vec3_t ;
struct TYPE_13__ {float x; float y; float width; float height; int fov_x; double fov_y; int* origin; int* lightingOrigin; int renderfx; int* oldorigin; int hModel; int axis; scalar_t__ time; int viewaxis; int rdflags; } ;
typedef TYPE_2__ refdef_t ;
typedef int refdef ;
typedef TYPE_2__ refEntity_t ;
typedef int ent ;
struct TYPE_16__ {int errorMessage; } ;
struct TYPE_15__ {int menu; int bannerModel; } ;
struct TYPE_14__ {scalar_t__ demoversion; scalar_t__ realtime; } ;


 int AnglesToAxis (int*,int ) ;
 int AxisClear (int ) ;
 int Menu_Draw (int *) ;
 int RDF_NOWORLDMODEL ;
 int RF_LIGHTING_ORIGIN ;
 int RF_NOSHADOW ;
 int UI_AdjustFrom640 (float*,float*,float*,float*) ;
 int UI_CENTER ;
 int UI_DROPSHADOW ;
 int UI_DrawProportionalString (int,int,char*,int,TYPE_1__) ;
 int UI_DrawProportionalString_AutoWrapped (int,int,int,int,int ,int,int ) ;
 int UI_DrawString (int,int,char*,int,TYPE_1__) ;
 int UI_SMALLFONT ;
 int VectorCopy (int*,int*) ;
 int VectorSet (int*,int ,int,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int menu_text_color ;
 TYPE_8__ s_errorMessage ;
 TYPE_7__ s_main ;
 double sin (float) ;
 scalar_t__ strlen (int ) ;
 int trap_R_AddRefEntityToScene (TYPE_2__*) ;
 int trap_R_ClearScene () ;
 int trap_R_RenderScene (TYPE_2__*) ;
 TYPE_4__ uis ;

__attribute__((used)) static void Main_MenuDraw( void ) {
 refdef_t refdef;
 refEntity_t ent;
 vec3_t origin;
 vec3_t angles;
 float adjust;
 float x, y, w, h;
 vec4_t color = {0.5, 0, 0, 1};



 memset( &refdef, 0, sizeof( refdef ) );

 refdef.rdflags = RDF_NOWORLDMODEL;

 AxisClear( refdef.viewaxis );

 x = 0;
 y = 0;
 w = 640;
 h = 120;
 UI_AdjustFrom640( &x, &y, &w, &h );
 refdef.x = x;
 refdef.y = y;
 refdef.width = w;
 refdef.height = h;

 adjust = 0;
 refdef.fov_x = 60 + adjust;
 refdef.fov_y = 19.6875 + adjust;

 refdef.time = uis.realtime;

 origin[0] = 300;
 origin[1] = 0;
 origin[2] = -32;

 trap_R_ClearScene();



 memset( &ent, 0, sizeof(ent) );

 adjust = 5.0 * sin( (float)uis.realtime / 5000 );
 VectorSet( angles, 0, 180 + adjust, 0 );
 AnglesToAxis( angles, ent.axis );
 ent.hModel = s_main.bannerModel;
 VectorCopy( origin, ent.origin );
 VectorCopy( origin, ent.lightingOrigin );
 ent.renderfx = RF_LIGHTING_ORIGIN | RF_NOSHADOW;
 VectorCopy( ent.origin, ent.oldorigin );

 trap_R_AddRefEntityToScene( &ent );

 trap_R_RenderScene( &refdef );

 if (strlen(s_errorMessage.errorMessage))
 {
  UI_DrawProportionalString_AutoWrapped( 320, 192, 600, 20, s_errorMessage.errorMessage, UI_CENTER|UI_SMALLFONT|UI_DROPSHADOW, menu_text_color );
 }
 else
 {

  Menu_Draw( &s_main.menu );
 }

 if (uis.demoversion) {
  UI_DrawProportionalString( 320, 372, "DEMO      FOR MATURE AUDIENCES      DEMO", UI_CENTER|UI_SMALLFONT, color );
  UI_DrawString( 320, 400, "Quake III Arena(c) 1999-2000, Id Software, Inc.  All Rights Reserved", UI_CENTER|UI_SMALLFONT, color );
 } else {
  UI_DrawString( 320, 450, "Quake III Arena(c) 1999-2000, Id Software, Inc.  All Rights Reserved", UI_CENTER|UI_SMALLFONT, color );
 }
}
