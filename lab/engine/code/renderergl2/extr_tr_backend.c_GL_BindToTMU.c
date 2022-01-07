
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; int texnum; int frameUsed; } ;
typedef TYPE_2__ image_t ;
struct TYPE_9__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_8__ {int frameCount; TYPE_1__* defaultImage; } ;
struct TYPE_6__ {int texnum; } ;
typedef int GLuint ;
typedef int GLenum ;


 int GL_BindMultiTexture (scalar_t__,int ,int ) ;
 scalar_t__ GL_TEXTURE0 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_CUBE_MAP ;
 int IMGFLAG_CUBEMAP ;
 int PRINT_WARNING ;
 int TB_COLORMAP ;
 TYPE_4__ ri ;
 int stub1 (int ,char*) ;
 TYPE_3__ tr ;

void GL_BindToTMU( image_t *image, int tmu )
{
 GLuint texture = (tmu == TB_COLORMAP) ? tr.defaultImage->texnum : 0;
 GLenum target = GL_TEXTURE_2D;

 if (image)
 {
  if (image->flags & IMGFLAG_CUBEMAP)
   target = GL_TEXTURE_CUBE_MAP;

  image->frameUsed = tr.frameCount;
  texture = image->texnum;
 }
 else
 {
  ri.Printf(PRINT_WARNING, "GL_BindToTMU: NULL image\n");
 }

 GL_BindMultiTexture(GL_TEXTURE0 + tmu, target, texture);
}
