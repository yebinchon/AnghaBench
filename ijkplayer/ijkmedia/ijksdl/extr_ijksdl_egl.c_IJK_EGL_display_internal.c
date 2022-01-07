
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int surface; int display; TYPE_1__* opaque; } ;
struct TYPE_5__ {int renderer; } ;
typedef int SDL_VoutOverlay ;
typedef TYPE_1__ IJK_EGL_Opaque ;
typedef TYPE_2__ IJK_EGL ;
typedef int EGLNativeWindowType ;
typedef int EGLBoolean ;


 int ALOGE (char*) ;
 int EGL_FALSE ;
 int EGL_TRUE ;
 int IJK_EGL_prepareRenderer (TYPE_2__*,int *) ;
 int IJK_GLES2_Renderer_renderOverlay (int ,int *) ;
 int eglSwapBuffers (int ,int ) ;

__attribute__((used)) static EGLBoolean IJK_EGL_display_internal(IJK_EGL* egl, EGLNativeWindowType window, SDL_VoutOverlay *overlay)
{
    IJK_EGL_Opaque *opaque = egl->opaque;

    if (!IJK_EGL_prepareRenderer(egl, overlay)) {
        ALOGE("[EGL] IJK_EGL_prepareRenderer failed\n");
        return EGL_FALSE;
    }

    if (!IJK_GLES2_Renderer_renderOverlay(opaque->renderer, overlay)) {
        ALOGE("[EGL] IJK_GLES2_render failed\n");
        return EGL_FALSE;
    }

    eglSwapBuffers(egl->display, egl->surface);

    return EGL_TRUE;
}
