
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vidWidth; int maxTextureSize; int numTextureUnits; int textureEnvAddAvailable; } ;
struct TYPE_3__ {int glslMaxAnimatedBones; } ;
typedef int GLint ;


 int Com_Clamp (int ,int ,int) ;
 int GL_MAX_TEXTURE_IMAGE_UNITS ;
 int GL_MAX_TEXTURE_SIZE ;
 int GL_MAX_VERTEX_UNIFORM_COMPONENTS ;
 int GL_SetDefaultState () ;
 int GLimp_Init (int ) ;
 int GLimp_InitExtraExtensions () ;
 int IQM_MAX_JOINTS ;
 TYPE_2__ glConfig ;
 TYPE_1__ glRefConfig ;
 int qfalse ;
 int qglGetIntegerv (int ,int*) ;
 int qtrue ;

__attribute__((used)) static void InitOpenGL( void )
{
 if ( glConfig.vidWidth == 0 )
 {
  GLint temp;

  GLimp_Init( qfalse );
  GLimp_InitExtraExtensions();

  glConfig.textureEnvAddAvailable = qtrue;


  qglGetIntegerv( GL_MAX_TEXTURE_SIZE, &temp );
  glConfig.maxTextureSize = temp;


  if ( glConfig.maxTextureSize <= 0 )
  {
   glConfig.maxTextureSize = 0;
  }

  qglGetIntegerv( GL_MAX_TEXTURE_IMAGE_UNITS, &temp );
  glConfig.numTextureUnits = temp;


  qglGetIntegerv( GL_MAX_VERTEX_UNIFORM_COMPONENTS, &temp );
  glRefConfig.glslMaxAnimatedBones = Com_Clamp( 0, IQM_MAX_JOINTS, ( temp - 160 ) / 16 );
  if ( glRefConfig.glslMaxAnimatedBones < 12 ) {
   glRefConfig.glslMaxAnimatedBones = 0;
  }
 }


 GL_SetDefaultState();
}
