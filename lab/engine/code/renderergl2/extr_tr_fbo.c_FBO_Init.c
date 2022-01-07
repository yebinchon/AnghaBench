
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_18__ {int frameBuffer; } ;
struct TYPE_17__ {scalar_t__ framebufferMultisample; int framebufferBlit; scalar_t__ textureFloat; int framebufferObject; } ;
struct TYPE_16__ {int * currentFBO; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {int (* Cvar_SetValue ) (char*,float) ;int (* Printf ) (int ,char*) ;} ;
struct TYPE_12__ {TYPE_7__* renderCubeFbo; TYPE_10__* renderCubeImage; TYPE_7__* screenSsaoFbo; TYPE_10__* screenSsaoImage; TYPE_7__* hdrDepthFbo; TYPE_10__* hdrDepthImage; TYPE_7__** quarterFbo; TYPE_10__** quarterImage; TYPE_7__* targetLevelsFbo; TYPE_10__* targetLevelsImage; TYPE_7__* calcLevelsFbo; TYPE_10__* calcLevelsImage; TYPE_7__** textureScratchFbo; TYPE_10__** textureScratchImage; TYPE_7__* screenShadowFbo; TYPE_10__* screenShadowImage; TYPE_7__** sunShadowFbo; TYPE_10__** sunShadowDepthImage; TYPE_7__** pshadowFbos; TYPE_10__** pshadowMaps; TYPE_7__* sunRaysFbo; TYPE_10__* renderDepthImage; TYPE_10__* sunRaysImage; TYPE_7__* screenScratchFbo; TYPE_10__* screenScratchImage; TYPE_7__* renderFbo; TYPE_10__* renderImage; TYPE_7__* msaaResolveFbo; scalar_t__ numFBOs; } ;
struct TYPE_11__ {int height; int width; } ;


 int FBO_AttachImage (TYPE_7__*,TYPE_10__*,int ,int ) ;
 void* FBO_Create (char*,int ,int ) ;
 int FBO_CreateBuffer (TYPE_7__*,int,int ,int) ;
 int GL_BindFramebuffer (int ,int ) ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_CheckErrors () ;
 int GL_DEPTH_ATTACHMENT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_DEPTH_COMPONENT24 ;
 int GL_DEPTH_COMPONENT24_ARB ;
 int GL_FRAMEBUFFER ;
 int GL_MAX_SAMPLES ;
 int GL_RGBA16F_ARB ;
 int GL_RGBA8 ;
 int MAX_DRAWN_PSHADOWS ;
 int PRINT_ALL ;
 int R_CheckFBO (TYPE_7__*) ;
 int R_IssuePendingRenderCommands () ;
 TYPE_6__ glRefConfig ;
 TYPE_5__ glState ;
 int qglClear (int) ;
 int qglGetIntegerv (int ,int*) ;
 TYPE_4__* r_ext_framebuffer_multisample ;
 TYPE_3__* r_hdr ;
 TYPE_2__ ri ;
 int stub1 (int ,char*) ;
 int stub2 (char*,float) ;
 TYPE_1__ tr ;
 char* va (char*,int) ;

void FBO_Init(void)
{
 int i;
 int hdrFormat, multisample = 0;

 ri.Printf(PRINT_ALL, "------- FBO_Init -------\n");

 if(!glRefConfig.framebufferObject)
  return;

 tr.numFBOs = 0;

 GL_CheckErrors();

 R_IssuePendingRenderCommands();

 hdrFormat = GL_RGBA8;
 if (r_hdr->integer && glRefConfig.textureFloat)
  hdrFormat = GL_RGBA16F_ARB;

 if (glRefConfig.framebufferMultisample)
  qglGetIntegerv(GL_MAX_SAMPLES, &multisample);

 if (r_ext_framebuffer_multisample->integer < multisample)
  multisample = r_ext_framebuffer_multisample->integer;

 if (multisample < 2 || !glRefConfig.framebufferBlit)
  multisample = 0;

 if (multisample != r_ext_framebuffer_multisample->integer)
  ri.Cvar_SetValue("r_ext_framebuffer_multisample", (float)multisample);



 if (multisample && glRefConfig.framebufferMultisample)
 {
  tr.renderFbo = FBO_Create("_render", tr.renderDepthImage->width, tr.renderDepthImage->height);
  FBO_CreateBuffer(tr.renderFbo, hdrFormat, 0, multisample);
  FBO_CreateBuffer(tr.renderFbo, GL_DEPTH_COMPONENT24, 0, multisample);
  R_CheckFBO(tr.renderFbo);

  tr.msaaResolveFbo = FBO_Create("_msaaResolve", tr.renderDepthImage->width, tr.renderDepthImage->height);
  FBO_AttachImage(tr.msaaResolveFbo, tr.renderImage, GL_COLOR_ATTACHMENT0, 0);
  FBO_AttachImage(tr.msaaResolveFbo, tr.renderDepthImage, GL_DEPTH_ATTACHMENT, 0);
  R_CheckFBO(tr.msaaResolveFbo);
 }
 else if (r_hdr->integer)
 {
  tr.renderFbo = FBO_Create("_render", tr.renderDepthImage->width, tr.renderDepthImage->height);
  FBO_AttachImage(tr.renderFbo, tr.renderImage, GL_COLOR_ATTACHMENT0, 0);
  FBO_AttachImage(tr.renderFbo, tr.renderDepthImage, GL_DEPTH_ATTACHMENT, 0);
  R_CheckFBO(tr.renderFbo);
 }



 if (tr.renderFbo)
 {
  GL_BindFramebuffer(GL_FRAMEBUFFER, tr.renderFbo->frameBuffer);
  qglClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
 }

 if (tr.screenScratchImage)
 {
  tr.screenScratchFbo = FBO_Create("screenScratch", tr.screenScratchImage->width, tr.screenScratchImage->height);
  FBO_AttachImage(tr.screenScratchFbo, tr.screenScratchImage, GL_COLOR_ATTACHMENT0, 0);
  FBO_AttachImage(tr.screenScratchFbo, tr.renderDepthImage, GL_DEPTH_ATTACHMENT, 0);
  R_CheckFBO(tr.screenScratchFbo);
 }

 if (tr.sunRaysImage)
 {
  tr.sunRaysFbo = FBO_Create("_sunRays", tr.renderDepthImage->width, tr.renderDepthImage->height);
  FBO_AttachImage(tr.sunRaysFbo, tr.sunRaysImage, GL_COLOR_ATTACHMENT0, 0);
  FBO_AttachImage(tr.sunRaysFbo, tr.renderDepthImage, GL_DEPTH_ATTACHMENT, 0);
  R_CheckFBO(tr.sunRaysFbo);
 }

 if (MAX_DRAWN_PSHADOWS && tr.pshadowMaps[0])
 {
  for( i = 0; i < MAX_DRAWN_PSHADOWS; i++)
  {
   tr.pshadowFbos[i] = FBO_Create(va("_shadowmap%d", i), tr.pshadowMaps[i]->width, tr.pshadowMaps[i]->height);

   FBO_CreateBuffer(tr.pshadowFbos[i], GL_RGBA8, 0, 0);
   FBO_AttachImage(tr.pshadowFbos[i], tr.pshadowMaps[i], GL_DEPTH_ATTACHMENT, 0);
   R_CheckFBO(tr.pshadowFbos[i]);
  }
 }

 if (tr.sunShadowDepthImage[0])
 {
  for (i = 0; i < 4; i++)
  {
   tr.sunShadowFbo[i] = FBO_Create("_sunshadowmap", tr.sunShadowDepthImage[i]->width, tr.sunShadowDepthImage[i]->height);


   FBO_CreateBuffer(tr.sunShadowFbo[i], GL_RGBA8, 0, 0);
   FBO_AttachImage(tr.sunShadowFbo[i], tr.sunShadowDepthImage[i], GL_DEPTH_ATTACHMENT, 0);
   R_CheckFBO(tr.sunShadowFbo[i]);
  }
 }

 if (tr.screenShadowImage)
 {
  tr.screenShadowFbo = FBO_Create("_screenshadow", tr.screenShadowImage->width, tr.screenShadowImage->height);
  FBO_AttachImage(tr.screenShadowFbo, tr.screenShadowImage, GL_COLOR_ATTACHMENT0, 0);
  R_CheckFBO(tr.screenShadowFbo);
 }

 if (tr.textureScratchImage[0])
 {
  for (i = 0; i < 2; i++)
  {
   tr.textureScratchFbo[i] = FBO_Create(va("_texturescratch%d", i), tr.textureScratchImage[i]->width, tr.textureScratchImage[i]->height);
   FBO_AttachImage(tr.textureScratchFbo[i], tr.textureScratchImage[i], GL_COLOR_ATTACHMENT0, 0);
   R_CheckFBO(tr.textureScratchFbo[i]);
  }
 }

 if (tr.calcLevelsImage)
 {
  tr.calcLevelsFbo = FBO_Create("_calclevels", tr.calcLevelsImage->width, tr.calcLevelsImage->height);
  FBO_AttachImage(tr.calcLevelsFbo, tr.calcLevelsImage, GL_COLOR_ATTACHMENT0, 0);
  R_CheckFBO(tr.calcLevelsFbo);
 }

 if (tr.targetLevelsImage)
 {
  tr.targetLevelsFbo = FBO_Create("_targetlevels", tr.targetLevelsImage->width, tr.targetLevelsImage->height);
  FBO_AttachImage(tr.targetLevelsFbo, tr.targetLevelsImage, GL_COLOR_ATTACHMENT0, 0);
  R_CheckFBO(tr.targetLevelsFbo);
 }

 if (tr.quarterImage[0])
 {
  for (i = 0; i < 2; i++)
  {
   tr.quarterFbo[i] = FBO_Create(va("_quarter%d", i), tr.quarterImage[i]->width, tr.quarterImage[i]->height);
   FBO_AttachImage(tr.quarterFbo[i], tr.quarterImage[i], GL_COLOR_ATTACHMENT0, 0);
   R_CheckFBO(tr.quarterFbo[i]);
  }
 }

 if (tr.hdrDepthImage)
 {
  tr.hdrDepthFbo = FBO_Create("_hdrDepth", tr.hdrDepthImage->width, tr.hdrDepthImage->height);
  FBO_AttachImage(tr.hdrDepthFbo, tr.hdrDepthImage, GL_COLOR_ATTACHMENT0, 0);
  R_CheckFBO(tr.hdrDepthFbo);
 }

 if (tr.screenSsaoImage)
 {
  tr.screenSsaoFbo = FBO_Create("_screenssao", tr.screenSsaoImage->width, tr.screenSsaoImage->height);
  FBO_AttachImage(tr.screenSsaoFbo, tr.screenSsaoImage, GL_COLOR_ATTACHMENT0, 0);
  R_CheckFBO(tr.screenSsaoFbo);
 }

 if (tr.renderCubeImage)
 {
  tr.renderCubeFbo = FBO_Create("_renderCubeFbo", tr.renderCubeImage->width, tr.renderCubeImage->height);
  FBO_AttachImage(tr.renderCubeFbo, tr.renderCubeImage, GL_COLOR_ATTACHMENT0, 0);
  FBO_CreateBuffer(tr.renderCubeFbo, GL_DEPTH_COMPONENT24_ARB, 0, 0);
  R_CheckFBO(tr.renderCubeFbo);
 }

 GL_CheckErrors();

 GL_BindFramebuffer(GL_FRAMEBUFFER, 0);
 glState.currentFBO = ((void*)0);
}
