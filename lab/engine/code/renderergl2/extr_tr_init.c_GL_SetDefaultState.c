
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ seamlessCubeMap; scalar_t__ vertexArrayObject; scalar_t__ framebufferObject; } ;
struct TYPE_9__ {int glStateBits; scalar_t__ vertexAttribsEnabled; int * currentVao; int faceCullFront; int faceCulling; scalar_t__ storedGlState; } ;
struct TYPE_8__ {int value; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int string; } ;


 int CT_TWO_SIDED ;
 int GLS_DEPTHMASK_TRUE ;
 int GLS_DEPTHTEST_DISABLE ;
 int GL_ARRAY_BUFFER ;
 int GL_BLEND ;
 int GL_BindNullFramebuffers () ;
 int GL_BindNullProgram () ;
 int GL_BindNullTextures () ;
 int GL_CULL_FACE ;
 int GL_DEPTH_TEST ;
 int GL_ELEMENT_ARRAY_BUFFER ;
 int GL_FILL ;
 int GL_FRONT ;
 int GL_FRONT_AND_BACK ;
 int GL_LEQUAL ;
 int GL_SCISSOR_TEST ;
 int GL_TEXTURE_CUBE_MAP_SEAMLESS ;
 int GL_TRUE ;
 int GL_TextureMode (int ) ;
 TYPE_5__ glRefConfig ;
 TYPE_4__ glState ;
 int qglBindBuffer (int ,int ) ;
 int qglBindVertexArray (int ) ;
 int qglClearColor (float,float,float,float) ;
 int qglClearDepth (float) ;
 int qglCullFace (int ) ;
 int qglDepthFunc (int ) ;
 int qglDepthMask (int ) ;
 int qglDisable (int ) ;
 int qglEnable (int ) ;
 int qglPolygonMode (int ,int ) ;
 int qglPolygonOffset (int ,int ) ;
 TYPE_3__* r_offsetFactor ;
 TYPE_2__* r_offsetUnits ;
 TYPE_1__* r_textureMode ;

void GL_SetDefaultState( void )
{
 qglClearDepth( 1.0f );

 qglCullFace(GL_FRONT);

 GL_BindNullTextures();

 if (glRefConfig.framebufferObject)
  GL_BindNullFramebuffers();

 GL_TextureMode( r_textureMode->string );


 qglDepthFunc( GL_LEQUAL );




 glState.glStateBits = GLS_DEPTHTEST_DISABLE | GLS_DEPTHMASK_TRUE;
 glState.storedGlState = 0;
 glState.faceCulling = CT_TWO_SIDED;
 glState.faceCullFront = GL_FRONT;

 GL_BindNullProgram();

 if (glRefConfig.vertexArrayObject)
  qglBindVertexArray(0);

 qglBindBuffer(GL_ARRAY_BUFFER, 0);
 qglBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
 glState.currentVao = ((void*)0);
 glState.vertexAttribsEnabled = 0;

 qglPolygonMode (GL_FRONT_AND_BACK, GL_FILL);
 qglDepthMask( GL_TRUE );
 qglDisable( GL_DEPTH_TEST );
 qglEnable( GL_SCISSOR_TEST );
 qglDisable( GL_CULL_FACE );
 qglDisable( GL_BLEND );

 if (glRefConfig.seamlessCubeMap)
  qglEnable(GL_TEXTURE_CUBE_MAP_SEAMLESS);


 qglPolygonOffset( r_offsetFactor->value, r_offsetUnits->value );

 qglClearColor( 0.0f, 0.0f, 0.0f, 1.0f );
}
