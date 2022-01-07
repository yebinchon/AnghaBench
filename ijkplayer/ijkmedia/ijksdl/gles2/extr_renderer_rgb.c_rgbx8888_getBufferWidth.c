
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* pitches; } ;
typedef TYPE_1__ SDL_VoutOverlay ;
typedef int IJK_GLES2_Renderer ;
typedef int GLsizei ;



__attribute__((used)) static GLsizei rgbx8888_getBufferWidth(IJK_GLES2_Renderer *renderer, SDL_VoutOverlay *overlay)
{
    if (!overlay)
        return 0;

    return overlay->pitches[0] / 4;
}
