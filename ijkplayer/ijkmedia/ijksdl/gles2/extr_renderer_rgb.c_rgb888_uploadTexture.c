
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * plane_textures; } ;
struct TYPE_5__ {int* pitches; int const h; int format; int const** pixels; } ;
typedef TYPE_1__ SDL_VoutOverlay ;
typedef TYPE_2__ IJK_GLES2_Renderer ;
typedef int GLubyte ;
typedef int GLsizei ;
typedef int GLboolean ;


 int ALOGE (char*,int) ;
 int GL_FALSE ;
 int GL_RGB ;
 int GL_TEXTURE_2D ;
 int GL_TRUE ;
 int GL_UNSIGNED_BYTE ;

 int glBindTexture (int ,int ) ;
 int glTexImage2D (int ,int ,int ,int const,int const,int ,int ,int ,int const*) ;

__attribute__((used)) static GLboolean rgb888_uploadTexture(IJK_GLES2_Renderer *renderer, SDL_VoutOverlay *overlay)
{
    if (!renderer || !overlay)
        return GL_FALSE;

    int planes[1] = { 0 };
    const GLsizei widths[1] = { overlay->pitches[0] / 3 };
    const GLsizei heights[3] = { overlay->h };
    const GLubyte *pixels[3] = { overlay->pixels[0] };

    switch (overlay->format) {
        case 128:
            break;
        default:
            ALOGE("[rgb888] unexpected format %x\n", overlay->format);
            return GL_FALSE;
    }

    for (int i = 0; i < 1; ++i) {
        int plane = planes[i];

        glBindTexture(GL_TEXTURE_2D, renderer->plane_textures[i]);

        glTexImage2D(GL_TEXTURE_2D,
                     0,
                     GL_RGB,
                     widths[plane],
                     heights[plane],
                     0,
                     GL_RGB,
                     GL_UNSIGNED_BYTE,
                     pixels[plane]);
    }

    return GL_TRUE;
}
