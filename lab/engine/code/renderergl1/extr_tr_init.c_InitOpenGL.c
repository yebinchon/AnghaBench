
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vidWidth; scalar_t__ maxTextureSize; } ;
typedef scalar_t__ GLint ;


 int GL_MAX_TEXTURE_SIZE ;
 int GL_SetDefaultState () ;
 int GLimp_Init (int ) ;
 int GLimp_InitExtraExtensions () ;
 TYPE_1__ glConfig ;
 int qglGetIntegerv (int ,scalar_t__*) ;
 int qtrue ;

__attribute__((used)) static void InitOpenGL( void )
{
 if ( glConfig.vidWidth == 0 )
 {
  GLint temp;

  GLimp_Init( qtrue );
  GLimp_InitExtraExtensions();


  qglGetIntegerv( GL_MAX_TEXTURE_SIZE, &temp );
  glConfig.maxTextureSize = temp;


  if ( glConfig.maxTextureSize <= 0 )
  {
   glConfig.maxTextureSize = 0;
  }
 }


 GL_SetDefaultState();
}
