
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int format; } ;
typedef TYPE_1__ IJK_GLES2_Renderer ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;
 int IJK_GLES2_Renderer_isValid (TYPE_1__*) ;

GLboolean IJK_GLES2_Renderer_isFormat(IJK_GLES2_Renderer *renderer, int format)
{
    if (!IJK_GLES2_Renderer_isValid(renderer))
        return GL_FALSE;

    return renderer->format == format ? GL_TRUE : GL_FALSE;
}
