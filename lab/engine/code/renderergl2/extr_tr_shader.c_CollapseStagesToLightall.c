
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_22__ {int glslShaderIndex; int glslShaderGroup; TYPE_1__* bundle; int specularScale; int normalScale; int type; } ;
typedef TYPE_2__ shaderStage_t ;
typedef scalar_t__ qboolean ;
typedef int imgFlags_t ;
struct TYPE_23__ {int flags; int imgName; } ;
typedef TYPE_3__ image_t ;
struct TYPE_29__ {scalar_t__ integer; } ;
struct TYPE_28__ {scalar_t__ integer; } ;
struct TYPE_27__ {scalar_t__ integer; } ;
struct TYPE_26__ {scalar_t__ integer; } ;
struct TYPE_25__ {size_t lightmapIndex; } ;
struct TYPE_24__ {int lightallShader; TYPE_3__** deluxemaps; scalar_t__ worldDeluxeMapping; } ;
struct TYPE_21__ {scalar_t__ numTexMods; TYPE_3__** image; scalar_t__ numImageAnimations; } ;
struct TYPE_20__ {float value; } ;
struct TYPE_19__ {float value; } ;
struct TYPE_18__ {float value; } ;


 int COM_StripExtension (int ,char*,int) ;
 int IMGFLAG_GENNORMALMAP ;
 int IMGFLAG_NOLIGHTSCALE ;
 int IMGTYPE_COLORALPHA ;
 int IMGTYPE_NORMAL ;
 int IMGTYPE_NORMALHEIGHT ;
 int LIGHTDEF_USE_LIGHTMAP ;
 int LIGHTDEF_USE_LIGHT_VECTOR ;
 int LIGHTDEF_USE_LIGHT_VERTEX ;
 int LIGHTDEF_USE_PARALLAXMAP ;
 int LIGHTDEF_USE_TCGEN_AND_TCMOD ;
 int MAX_QPATH ;
 int Q_strcat (char*,int,char*) ;
 TYPE_3__* R_FindImageFile (char*,int ,int) ;
 int ST_GLSL ;
 size_t TB_DELUXEMAP ;
 size_t TB_DIFFUSEMAP ;
 size_t TB_LIGHTMAP ;
 size_t TB_NORMALMAP ;
 size_t TB_SPECULARMAP ;
 int VectorCopy4 (int ,int ) ;
 int VectorSet4 (int ,float,float,float,float) ;
 scalar_t__ qtrue ;
 TYPE_12__* r_baseNormalX ;
 TYPE_11__* r_baseNormalY ;
 TYPE_10__* r_baseParallax ;
 TYPE_9__* r_deluxeMapping ;
 TYPE_8__* r_normalMapping ;
 TYPE_7__* r_parallaxMapping ;
 TYPE_6__* r_specularMapping ;
 TYPE_5__ shader ;
 int strlen (char*) ;
 TYPE_4__ tr ;

__attribute__((used)) static void CollapseStagesToLightall(shaderStage_t *diffuse,
 shaderStage_t *normal, shaderStage_t *specular, shaderStage_t *lightmap,
 qboolean useLightVector, qboolean useLightVertex, qboolean parallax, qboolean tcgen)
{
 int defs = 0;




 diffuse->type = ST_GLSL;

 if (lightmap)
 {

  diffuse->bundle[TB_LIGHTMAP] = lightmap->bundle[0];
  defs |= LIGHTDEF_USE_LIGHTMAP;
 }
 else if (useLightVector)
 {
  defs |= LIGHTDEF_USE_LIGHT_VECTOR;
 }
 else if (useLightVertex)
 {
  defs |= LIGHTDEF_USE_LIGHT_VERTEX;
 }

 if (r_deluxeMapping->integer && tr.worldDeluxeMapping && lightmap && shader.lightmapIndex >= 0)
 {

  diffuse->bundle[TB_DELUXEMAP] = lightmap->bundle[0];
  diffuse->bundle[TB_DELUXEMAP].image[0] = tr.deluxemaps[shader.lightmapIndex];
 }

 if (r_normalMapping->integer)
 {
  image_t *diffuseImg;
  if (normal)
  {

   diffuse->bundle[TB_NORMALMAP] = normal->bundle[0];
   if (parallax && r_parallaxMapping->integer)
    defs |= LIGHTDEF_USE_PARALLAXMAP;

   VectorCopy4(normal->normalScale, diffuse->normalScale);
  }
  else if ((lightmap || useLightVector || useLightVertex) && (diffuseImg = diffuse->bundle[TB_DIFFUSEMAP].image[0]))
  {
   char normalName[MAX_QPATH];
   image_t *normalImg;
   imgFlags_t normalFlags = (diffuseImg->flags & ~IMGFLAG_GENNORMALMAP) | IMGFLAG_NOLIGHTSCALE;


   COM_StripExtension(diffuseImg->imgName, normalName, MAX_QPATH);
   Q_strcat(normalName, MAX_QPATH, "_nh");

   normalImg = R_FindImageFile(normalName, IMGTYPE_NORMALHEIGHT, normalFlags);

   if (normalImg)
   {
    parallax = qtrue;
   }
   else
   {

    normalName[strlen(normalName) - 1] = '\0';
    normalImg = R_FindImageFile(normalName, IMGTYPE_NORMAL, normalFlags);
   }

   if (normalImg)
   {
    diffuse->bundle[TB_NORMALMAP] = diffuse->bundle[0];
    diffuse->bundle[TB_NORMALMAP].numImageAnimations = 0;
    diffuse->bundle[TB_NORMALMAP].image[0] = normalImg;

    if (parallax && r_parallaxMapping->integer)
     defs |= LIGHTDEF_USE_PARALLAXMAP;

    VectorSet4(diffuse->normalScale, r_baseNormalX->value, r_baseNormalY->value, 1.0f, r_baseParallax->value);
   }
  }
 }

 if (r_specularMapping->integer)
 {
  image_t *diffuseImg;
  if (specular)
  {

   diffuse->bundle[TB_SPECULARMAP] = specular->bundle[0];
   VectorCopy4(specular->specularScale, diffuse->specularScale);
  }
  else if ((lightmap || useLightVector || useLightVertex) && (diffuseImg = diffuse->bundle[TB_DIFFUSEMAP].image[0]))
  {
   char specularName[MAX_QPATH];
   image_t *specularImg;
   imgFlags_t specularFlags = (diffuseImg->flags & ~IMGFLAG_GENNORMALMAP) | IMGFLAG_NOLIGHTSCALE;

   COM_StripExtension(diffuseImg->imgName, specularName, MAX_QPATH);
   Q_strcat(specularName, MAX_QPATH, "_s");

   specularImg = R_FindImageFile(specularName, IMGTYPE_COLORALPHA, specularFlags);

   if (specularImg)
   {
    diffuse->bundle[TB_SPECULARMAP] = diffuse->bundle[0];
    diffuse->bundle[TB_SPECULARMAP].numImageAnimations = 0;
    diffuse->bundle[TB_SPECULARMAP].image[0] = specularImg;

    VectorSet4(diffuse->specularScale, 1.0f, 1.0f, 1.0f, 1.0f);
   }
  }
 }

 if (tcgen || diffuse->bundle[0].numTexMods)
 {
  defs |= LIGHTDEF_USE_TCGEN_AND_TCMOD;
 }



 diffuse->glslShaderGroup = tr.lightallShader;
 diffuse->glslShaderIndex = defs;
}
