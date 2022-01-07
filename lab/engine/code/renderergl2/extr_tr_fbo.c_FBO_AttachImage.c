
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int texnum; } ;
typedef TYPE_1__ image_t ;
struct TYPE_6__ {TYPE_1__** colorImage; int frameBuffer; } ;
typedef int GLuint ;
typedef int GLenum ;
typedef TYPE_2__ FBO_t ;


 int GL_COLOR_ATTACHMENT0 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB ;
 int IMGFLAG_CUBEMAP ;
 int qglNamedFramebufferTexture2DEXT (int ,int,int,int ,int ) ;

void FBO_AttachImage(FBO_t *fbo, image_t *image, GLenum attachment, GLuint cubemapside)
{
 GLenum target = GL_TEXTURE_2D;
 int index;

 if (image->flags & IMGFLAG_CUBEMAP)
  target = GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB + cubemapside;

 qglNamedFramebufferTexture2DEXT(fbo->frameBuffer, attachment, target, image->texnum, 0);
 index = attachment - GL_COLOR_ATTACHMENT0;
 if (index >= 0 && index <= 15)
  fbo->colorImage[index] = image;
}
