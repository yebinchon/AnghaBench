
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_10__ {TYPE_1__* currentEntity; } ;
struct TYPE_9__ {int stencilBits; } ;
struct TYPE_8__ {int numVertexes; float** xyz; int numIndexes; int* indexes; } ;
struct TYPE_7__ {int whiteImage; } ;
struct TYPE_6__ {int modelLightDir; } ;
typedef int GLboolean ;


 int CT_BACK_SIDED ;
 int CT_FRONT_SIDED ;
 int Com_Memset (int ,int ,int) ;
 int CrossProduct (int ,int ,int ) ;
 float DotProduct (int ,int ) ;
 int GLS_DSTBLEND_ZERO ;
 int GLS_SRCBLEND_ONE ;
 int GL_ALWAYS ;
 int GL_BindToTMU (int ,int ) ;
 int GL_COLOR_WRITEMASK ;
 int GL_Cull (int ) ;
 int GL_DECR ;
 int GL_FALSE ;
 int GL_INCR ;
 int GL_KEEP ;
 int GL_STENCIL_TEST ;
 int GL_State (int) ;
 int R_AddEdgeDef (int,int,int) ;
 int R_RenderShadowEdges () ;
 int TB_COLORMAP ;
 int VectorCopy (int ,int ) ;
 int VectorMA (float*,int,int ,int ) ;
 int VectorSubtract (float*,float*,int ) ;
 TYPE_5__ backEnd ;
 int* facing ;
 TYPE_4__ glConfig ;
 int numEdgeDefs ;
 int qglColor3f (float,float,float) ;
 int qglColorMask (int ,int ,int ,int ) ;
 int qglEnable (int ) ;
 int qglGetBooleanv (int ,int *) ;
 int qglStencilFunc (int ,int,int) ;
 int qglStencilOp (int ,int ,int ) ;
 int * shadowXyz ;
 TYPE_3__ tess ;
 TYPE_2__ tr ;

void RB_ShadowTessEnd( void ) {
}
