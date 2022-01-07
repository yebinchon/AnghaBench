
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int vec3_t ;
struct TYPE_24__ {float fraction; int endpos; } ;
typedef TYPE_6__ trace_t ;
typedef int rendererinfos ;
struct TYPE_25__ {int renderfx; float radius; int customShader; int origin; int reType; } ;
typedef TYPE_7__ refEntity_t ;
typedef int qhandle_t ;
typedef int ent ;
struct TYPE_23__ {float fov_x; int vieworg; int * viewaxis; } ;
struct TYPE_22__ {float vidWidth; } ;
struct TYPE_21__ {int * crosshairShader; } ;
struct TYPE_19__ {scalar_t__* persistant; } ;
struct TYPE_20__ {TYPE_1__ ps; } ;
struct TYPE_18__ {float time; float itemPickupBlendTime; TYPE_5__ refdef; scalar_t__ renderingThirdPerson; TYPE_2__* snap; } ;
struct TYPE_17__ {float value; } ;
struct TYPE_16__ {int integer; } ;
struct TYPE_15__ {TYPE_4__ glconfig; TYPE_3__ media; } ;


 int CG_Trace (TYPE_6__*,int ,int *,int *,int ,int ,int ) ;
 float ITEM_BLOB_TIME ;
 int MASK_SHOT ;
 float M_PI ;
 int NUM_CROSSHAIRS ;
 size_t PERS_TEAM ;
 int RF_CROSSHAIR ;
 int RF_DEPTHHACK ;
 int RT_SPRITE ;
 scalar_t__ TEAM_SPECTATOR ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,float,int ,int ) ;
 float atof (char*) ;
 TYPE_13__ cg ;
 TYPE_12__ cg_crosshairSize ;
 TYPE_11__ cg_drawCrosshair ;
 TYPE_10__ cgs ;
 int memset (TYPE_7__*,int ,int) ;
 float tan (float) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 int trap_R_AddRefEntityToScene (TYPE_7__*) ;

__attribute__((used)) static void CG_DrawCrosshair3D(void)
{
 float w;
 qhandle_t hShader;
 float f;
 int ca;

 trace_t trace;
 vec3_t endpos;
 float stereoSep, zProj, maxdist, xmax;
 char rendererinfos[128];
 refEntity_t ent;

 if ( !cg_drawCrosshair.integer ) {
  return;
 }

 if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR) {
  return;
 }

 if ( cg.renderingThirdPerson ) {
  return;
 }

 w = cg_crosshairSize.value;


 f = cg.time - cg.itemPickupBlendTime;
 if ( f > 0 && f < ITEM_BLOB_TIME ) {
  f /= ITEM_BLOB_TIME;
  w *= ( 1 + f );
 }

 ca = cg_drawCrosshair.integer;
 if (ca < 0) {
  ca = 0;
 }
 hShader = cgs.media.crosshairShader[ ca % NUM_CROSSHAIRS ];






 trap_Cvar_VariableStringBuffer("r_zProj", rendererinfos, sizeof(rendererinfos));
 zProj = atof(rendererinfos);
 trap_Cvar_VariableStringBuffer("r_stereoSeparation", rendererinfos, sizeof(rendererinfos));
 stereoSep = zProj / atof(rendererinfos);

 xmax = zProj * tan(cg.refdef.fov_x * M_PI / 360.0f);


 maxdist = cgs.glconfig.vidWidth * stereoSep * zProj / (2 * xmax);
 VectorMA(cg.refdef.vieworg, maxdist, cg.refdef.viewaxis[0], endpos);
 CG_Trace(&trace, cg.refdef.vieworg, ((void*)0), ((void*)0), endpos, 0, MASK_SHOT);

 memset(&ent, 0, sizeof(ent));
 ent.reType = RT_SPRITE;
 ent.renderfx = RF_DEPTHHACK | RF_CROSSHAIR;

 VectorCopy(trace.endpos, ent.origin);


 ent.radius = w / 640 * xmax * trace.fraction * maxdist / zProj;
 ent.customShader = hShader;

 trap_R_AddRefEntityToScene(&ent);
}
