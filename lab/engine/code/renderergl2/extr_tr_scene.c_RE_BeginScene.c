
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_21__ ;
typedef struct TYPE_34__ TYPE_20__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_19__ ;
typedef struct TYPE_31__ TYPE_18__ ;
typedef struct TYPE_30__ TYPE_17__ ;
typedef struct TYPE_29__ TYPE_16__ ;
typedef struct TYPE_28__ TYPE_15__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_36__ {float blurFactor; int sunAmbCol; int sunCol; int sunDir; } ;
typedef TYPE_2__ refdefex_t ;
struct TYPE_37__ {double time; int rdflags; scalar_t__ areamask; int * viewaxis; int vieworg; int fov_y; int fov_x; int height; int width; int y; int x; int text; } ;
typedef TYPE_3__ refdef_t ;
struct TYPE_43__ {int value; } ;
struct TYPE_42__ {int value; } ;
struct TYPE_41__ {int integer; } ;
struct TYPE_40__ {int integer; } ;
struct TYPE_39__ {int integer; } ;
struct TYPE_33__ {float* vieworg; float** viewaxis; double time; int rdflags; float* sunDir; float* sunCol; float* sunAmbCol; float blurFactor; double floatTime; scalar_t__ num_dlights; int * pshadows; scalar_t__ num_pshadows; int * polys; scalar_t__ numPolys; int * dlights; int * entities; scalar_t__ num_entities; int drawSurfs; int numDrawSurfs; void** toneMinAvgMaxLinear; int * autoExposureMinMax; int areamaskModified; scalar_t__ areamask; int fov_y; int fov_x; int height; int width; int y; int x; int text; } ;
struct TYPE_38__ {float sunShadowScale; int sceneCount; int frameSceneNum; TYPE_1__ refdef; int * toneMinAvgMaxLevel; int * autoExposureMinMax; int sunLight; int sunDirection; } ;
struct TYPE_35__ {int * pshadows; int * polys; int * dlights; int * entities; int drawSurfs; } ;
struct TYPE_34__ {scalar_t__ hardwareType; } ;
struct TYPE_32__ {int value; } ;
struct TYPE_31__ {scalar_t__ integer; } ;
struct TYPE_30__ {scalar_t__ integer; } ;
struct TYPE_29__ {int value; } ;
struct TYPE_28__ {int value; } ;
struct TYPE_27__ {scalar_t__ integer; } ;
struct TYPE_26__ {float value; } ;
struct TYPE_25__ {float value; } ;
struct TYPE_24__ {scalar_t__ integer; } ;
struct TYPE_23__ {int value; } ;


 int Com_Memcpy (int ,int ,int) ;
 scalar_t__ GLHW_PERMEDIA2 ;
 int MAX_MAP_AREA_BYTES ;
 int RDF_EXTRA ;
 int RDF_NOWORLDMODEL ;
 int RDF_SUNLIGHT ;
 int VectorCopy (int ,float*) ;
 int VectorScale (int ,float,float*) ;
 int VectorSet (float*,int ,int ,int ) ;
 TYPE_21__* backEndData ;
 TYPE_20__ glConfig ;
 void* pow (int,int ) ;
 int qfalse ;
 int qtrue ;
 TYPE_19__* r_depthPrepass ;
 TYPE_18__* r_dynamiclight ;
 size_t r_firstSceneDlight ;
 int r_firstSceneDrawSurf ;
 size_t r_firstSceneEntity ;
 size_t r_firstScenePoly ;
 TYPE_17__* r_forceAutoExposure ;
 TYPE_16__* r_forceAutoExposureMax ;
 TYPE_15__* r_forceAutoExposureMin ;
 TYPE_14__* r_forceSun ;
 TYPE_13__* r_forceSunAmbientScale ;
 TYPE_12__* r_forceSunLightScale ;
 TYPE_11__* r_forceToneMap ;
 TYPE_10__* r_forceToneMapAvg ;
 TYPE_9__* r_forceToneMapMax ;
 TYPE_8__* r_forceToneMapMin ;
 TYPE_7__* r_mapOverBrightBits ;
 scalar_t__ r_numdlights ;
 scalar_t__ r_numentities ;
 scalar_t__ r_numpolys ;
 TYPE_6__* r_sunlightMode ;
 TYPE_5__* r_vertexLight ;
 TYPE_4__ tr ;

void RE_BeginScene(const refdef_t *fd)
{
 Com_Memcpy( tr.refdef.text, fd->text, sizeof( tr.refdef.text ) );

 tr.refdef.x = fd->x;
 tr.refdef.y = fd->y;
 tr.refdef.width = fd->width;
 tr.refdef.height = fd->height;
 tr.refdef.fov_x = fd->fov_x;
 tr.refdef.fov_y = fd->fov_y;

 VectorCopy( fd->vieworg, tr.refdef.vieworg );
 VectorCopy( fd->viewaxis[0], tr.refdef.viewaxis[0] );
 VectorCopy( fd->viewaxis[1], tr.refdef.viewaxis[1] );
 VectorCopy( fd->viewaxis[2], tr.refdef.viewaxis[2] );

 tr.refdef.time = fd->time;
 tr.refdef.rdflags = fd->rdflags;



 tr.refdef.areamaskModified = qfalse;
 if ( ! (tr.refdef.rdflags & RDF_NOWORLDMODEL) ) {
  int areaDiff;
  int i;


  areaDiff = 0;
  for (i = 0 ; i < MAX_MAP_AREA_BYTES/4 ; i++) {
   areaDiff |= ((int *)tr.refdef.areamask)[i] ^ ((int *)fd->areamask)[i];
   ((int *)tr.refdef.areamask)[i] = ((int *)fd->areamask)[i];
  }

  if ( areaDiff ) {

   tr.refdef.areamaskModified = qtrue;
  }
 }

 tr.refdef.sunDir[3] = 0.0f;
 tr.refdef.sunCol[3] = 1.0f;
 tr.refdef.sunAmbCol[3] = 1.0f;

 VectorCopy(tr.sunDirection, tr.refdef.sunDir);
 if ( (tr.refdef.rdflags & RDF_NOWORLDMODEL) || !(r_depthPrepass->value) ){
  VectorSet(tr.refdef.sunCol, 0, 0, 0);
  VectorSet(tr.refdef.sunAmbCol, 0, 0, 0);
 }
 else
 {
  float scale = (1 << r_mapOverBrightBits->integer) / 255.0f;

  if (r_forceSun->integer)
   VectorScale(tr.sunLight, scale * r_forceSunLightScale->value, tr.refdef.sunCol);
  else
   VectorScale(tr.sunLight, scale, tr.refdef.sunCol);

  if (r_sunlightMode->integer == 1)
  {
   tr.refdef.sunAmbCol[0] =
   tr.refdef.sunAmbCol[1] =
   tr.refdef.sunAmbCol[2] = r_forceSun->integer ? r_forceSunAmbientScale->value : tr.sunShadowScale;
  }
  else
  {
   if (r_forceSun->integer)
    VectorScale(tr.sunLight, scale * r_forceSunAmbientScale->value, tr.refdef.sunAmbCol);
   else
    VectorScale(tr.sunLight, scale * tr.sunShadowScale, tr.refdef.sunAmbCol);
  }
 }

 if (r_forceAutoExposure->integer)
 {
  tr.refdef.autoExposureMinMax[0] = r_forceAutoExposureMin->value;
  tr.refdef.autoExposureMinMax[1] = r_forceAutoExposureMax->value;
 }
 else
 {
  tr.refdef.autoExposureMinMax[0] = tr.autoExposureMinMax[0];
  tr.refdef.autoExposureMinMax[1] = tr.autoExposureMinMax[1];
 }

 if (r_forceToneMap->integer)
 {
  tr.refdef.toneMinAvgMaxLinear[0] = pow(2, r_forceToneMapMin->value);
  tr.refdef.toneMinAvgMaxLinear[1] = pow(2, r_forceToneMapAvg->value);
  tr.refdef.toneMinAvgMaxLinear[2] = pow(2, r_forceToneMapMax->value);
 }
 else
 {
  tr.refdef.toneMinAvgMaxLinear[0] = pow(2, tr.toneMinAvgMaxLevel[0]);
  tr.refdef.toneMinAvgMaxLinear[1] = pow(2, tr.toneMinAvgMaxLevel[1]);
  tr.refdef.toneMinAvgMaxLinear[2] = pow(2, tr.toneMinAvgMaxLevel[2]);
 }


 if (fd->rdflags & RDF_EXTRA) {
  const refdefex_t* extra = (const refdefex_t*) (fd+1);

  tr.refdef.blurFactor = extra->blurFactor;

  if (fd->rdflags & RDF_SUNLIGHT)
  {
   VectorCopy(extra->sunDir, tr.refdef.sunDir);
   VectorCopy(extra->sunCol, tr.refdef.sunCol);
   VectorCopy(extra->sunAmbCol, tr.refdef.sunAmbCol);
  }
 }
 else
 {
  tr.refdef.blurFactor = 0.0f;
 }



 tr.refdef.floatTime = tr.refdef.time * 0.001;

 tr.refdef.numDrawSurfs = r_firstSceneDrawSurf;
 tr.refdef.drawSurfs = backEndData->drawSurfs;

 tr.refdef.num_entities = r_numentities - r_firstSceneEntity;
 tr.refdef.entities = &backEndData->entities[r_firstSceneEntity];

 tr.refdef.num_dlights = r_numdlights - r_firstSceneDlight;
 tr.refdef.dlights = &backEndData->dlights[r_firstSceneDlight];

 tr.refdef.numPolys = r_numpolys - r_firstScenePoly;
 tr.refdef.polys = &backEndData->polys[r_firstScenePoly];

 tr.refdef.num_pshadows = 0;
 tr.refdef.pshadows = &backEndData->pshadows[0];



 if ( r_dynamiclight->integer == 0 ||
   r_vertexLight->integer == 1 ||
   glConfig.hardwareType == GLHW_PERMEDIA2 ) {
  tr.refdef.num_dlights = 0;
 }






 tr.frameSceneNum++;
 tr.sceneCount++;
}
