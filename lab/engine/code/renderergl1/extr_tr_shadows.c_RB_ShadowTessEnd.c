
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
struct TYPE_6__ {int lightDir; } ;
typedef int GLboolean ;


 int CT_BACK_SIDED ;
 int CT_FRONT_SIDED ;
 int Com_Memset (int ,int ,int) ;
 int CrossProduct (int ,int ,int ) ;
 float DotProduct (int ,int ) ;
 int GLS_DSTBLEND_ZERO ;
 int GLS_SRCBLEND_ONE ;
 int GL_ALWAYS ;
 int GL_Bind (int ) ;
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
 int i;
 int numTris;
 vec3_t lightDir;
 GLboolean rgba[4];

 if ( glConfig.stencilBits < 4 ) {
  return;
 }

 VectorCopy( backEnd.currentEntity->lightDir, lightDir );


 for ( i = 0 ; i < tess.numVertexes ; i++ ) {
  VectorMA( tess.xyz[i], -512, lightDir, shadowXyz[i] );
 }


 Com_Memset( numEdgeDefs, 0, 4 * tess.numVertexes );

 numTris = tess.numIndexes / 3;
 for ( i = 0 ; i < numTris ; i++ ) {
  int i1, i2, i3;
  vec3_t d1, d2, normal;
  float *v1, *v2, *v3;
  float d;

  i1 = tess.indexes[ i*3 + 0 ];
  i2 = tess.indexes[ i*3 + 1 ];
  i3 = tess.indexes[ i*3 + 2 ];

  v1 = tess.xyz[ i1 ];
  v2 = tess.xyz[ i2 ];
  v3 = tess.xyz[ i3 ];

  VectorSubtract( v2, v1, d1 );
  VectorSubtract( v3, v1, d2 );
  CrossProduct( d1, d2, normal );

  d = DotProduct( normal, lightDir );
  if ( d > 0 ) {
   facing[ i ] = 1;
  } else {
   facing[ i ] = 0;
  }


  R_AddEdgeDef( i1, i2, facing[ i ] );
  R_AddEdgeDef( i2, i3, facing[ i ] );
  R_AddEdgeDef( i3, i1, facing[ i ] );
 }



 GL_Bind( tr.whiteImage );
 GL_State( GLS_SRCBLEND_ONE | GLS_DSTBLEND_ZERO );
 qglColor3f( 0.2f, 0.2f, 0.2f );


 qglGetBooleanv(GL_COLOR_WRITEMASK, rgba);
 qglColorMask( GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE );

 qglEnable( GL_STENCIL_TEST );
 qglStencilFunc( GL_ALWAYS, 1, 255 );

 GL_Cull( CT_BACK_SIDED );
 qglStencilOp( GL_KEEP, GL_KEEP, GL_INCR );

 R_RenderShadowEdges();

 GL_Cull( CT_FRONT_SIDED );
 qglStencilOp( GL_KEEP, GL_KEEP, GL_DECR );

 R_RenderShadowEdges();



 qglColorMask(rgba[0], rgba[1], rgba[2], rgba[3]);
}
