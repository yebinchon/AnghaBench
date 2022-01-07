
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_28__ {TYPE_5__* shader; scalar_t__ fogNum; TYPE_4__** xstages; scalar_t__ dlightBits; scalar_t__ pshadowBits; scalar_t__ useInternalVao; int numIndexes; int numVertexes; } ;
typedef TYPE_6__ shaderCommands_t ;
typedef int qboolean ;
struct TYPE_30__ {int integer; } ;
struct TYPE_29__ {scalar_t__ lightallShader; } ;
struct TYPE_27__ {scalar_t__ cullType; scalar_t__ sort; int surfaceFlags; int numUnfoggedPasses; scalar_t__ polygonOffset; scalar_t__ fogPass; int name; } ;
struct TYPE_26__ {scalar_t__ glslShaderGroup; int glslShaderIndex; } ;
struct TYPE_25__ {int flags; scalar_t__ isMirror; } ;
struct TYPE_24__ {scalar_t__ mirrored; } ;
struct TYPE_23__ {int c_staticVaoDraws; } ;
struct TYPE_22__ {TYPE_3__ viewParms; scalar_t__ depthFill; TYPE_2__* currentEntity; TYPE_1__ pc; } ;
struct TYPE_21__ {scalar_t__ framebufferObject; } ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {scalar_t__ integer; } ;


 scalar_t__ CT_BACK_SIDED ;
 scalar_t__ CT_FRONT_SIDED ;
 scalar_t__ CT_TWO_SIDED ;
 int ForwardDlight () ;
 int GL_Cull (scalar_t__) ;
 int GL_POLYGON_OFFSET_FILL ;
 int GLimp_LogComment (int ) ;
 int LIGHTDEF_LIGHTTYPE_MASK ;
 int ProjectDlightTexture () ;
 int ProjectPshadowVBOGLSL () ;
 unsigned int RB_CalcShaderVertexAttribs (TYPE_6__*) ;
 int RB_DeformTessGeometry () ;
 int RB_FogPass () ;
 int RB_IterateStagesGeneric (TYPE_6__*) ;
 int RB_RenderShadowmap (TYPE_6__*) ;
 int RB_UpdateTessVao (unsigned int) ;
 scalar_t__ SS_OPAQUE ;
 int SURF_NODLIGHT ;
 int SURF_SKY ;
 int VPF_DEPTHSHADOW ;
 int VPF_SHADOWMAP ;
 TYPE_14__ backEnd ;
 TYPE_13__ glRefConfig ;
 int qglDisable (int ) ;
 int qglEnable (int ) ;
 TYPE_12__* r_dlightMode ;
 TYPE_11__* r_lightmap ;
 TYPE_10__* r_logFile ;
 TYPE_9__* r_shadows ;
 TYPE_6__ tess ;
 TYPE_7__ tr ;
 int va (char*,int ) ;

void RB_StageIteratorGeneric( void )
{
 shaderCommands_t *input;
 unsigned int vertexAttribs = 0;

 input = &tess;

 if (!input->numVertexes || !input->numIndexes)
 {
  return;
 }

 if (tess.useInternalVao)
 {
  RB_DeformTessGeometry();
 }

 vertexAttribs = RB_CalcShaderVertexAttribs( input );

 if (tess.useInternalVao)
 {
  RB_UpdateTessVao(vertexAttribs);
 }
 else
 {
  backEnd.pc.c_staticVaoDraws++;
 }




 if ( r_logFile->integer )
 {


  GLimp_LogComment( va("--- RB_StageIteratorGeneric( %s ) ---\n", tess.shader->name) );
 }




 if (input->shader->cullType == CT_TWO_SIDED)
 {
  GL_Cull( CT_TWO_SIDED );
 }
 else
 {
  qboolean cullFront = (input->shader->cullType == CT_FRONT_SIDED);

  if ( backEnd.viewParms.flags & VPF_DEPTHSHADOW )
   cullFront = !cullFront;

  if ( backEnd.viewParms.isMirror )
   cullFront = !cullFront;

  if ( backEnd.currentEntity && backEnd.currentEntity->mirrored )
   cullFront = !cullFront;

  if (cullFront)
   GL_Cull( CT_FRONT_SIDED );
  else
   GL_Cull( CT_BACK_SIDED );
 }


 if ( input->shader->polygonOffset )
 {
  qglEnable( GL_POLYGON_OFFSET_FILL );
 }




 if (backEnd.depthFill)
 {
  RB_IterateStagesGeneric( input );




  if ( input->shader->polygonOffset )
  {
   qglDisable( GL_POLYGON_OFFSET_FILL );
  }

  return;
 }




 if (backEnd.viewParms.flags & VPF_SHADOWMAP)
 {
  if ( input->shader->sort == SS_OPAQUE )
  {
   RB_RenderShadowmap( input );
  }



  if ( input->shader->polygonOffset )
  {
   qglDisable( GL_POLYGON_OFFSET_FILL );
  }

  return;
 }





 RB_IterateStagesGeneric( input );




 if (glRefConfig.framebufferObject && r_shadows->integer == 4 && tess.pshadowBits
  && tess.shader->sort <= SS_OPAQUE && !(tess.shader->surfaceFlags & (SURF_NODLIGHT | SURF_SKY) ) ) {
  ProjectPshadowVBOGLSL();
 }





 if ( tess.dlightBits && tess.shader->sort <= SS_OPAQUE && r_lightmap->integer == 0
  && !(tess.shader->surfaceFlags & (SURF_NODLIGHT | SURF_SKY) ) ) {
  if (tess.shader->numUnfoggedPasses == 1 && tess.xstages[0]->glslShaderGroup == tr.lightallShader
   && (tess.xstages[0]->glslShaderIndex & LIGHTDEF_LIGHTTYPE_MASK) && r_dlightMode->integer)
  {
   ForwardDlight();
  }
  else
  {
   ProjectDlightTexture();
  }
 }




 if ( tess.fogNum && tess.shader->fogPass ) {
  RB_FogPass();
 }




 if ( input->shader->polygonOffset )
 {
  qglDisable( GL_POLYGON_OFFSET_FILL );
 }
}
