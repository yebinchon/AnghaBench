
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int display; int * opaque; } ;
typedef int SDL_VoutOverlay ;
typedef int IJK_EGL_Opaque ;
typedef TYPE_1__ IJK_EGL ;
typedef int EGLNativeWindowType ;
typedef int EGLBoolean ;


 int EGL_FALSE ;
 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int IJK_EGL_display_internal (TYPE_1__*,int ,int *) ;
 int IJK_EGL_makeCurrent (TYPE_1__*,int ) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int eglReleaseThread () ;

EGLBoolean IJK_EGL_display(IJK_EGL* egl, EGLNativeWindowType window, SDL_VoutOverlay *overlay)
{
    EGLBoolean ret = EGL_FALSE;
    if (!egl)
        return EGL_FALSE;

    IJK_EGL_Opaque *opaque = egl->opaque;
    if (!opaque)
        return EGL_FALSE;

    if (!IJK_EGL_makeCurrent(egl, window))
        return EGL_FALSE;

    ret = IJK_EGL_display_internal(egl, window, overlay);
    eglMakeCurrent(egl->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
    eglReleaseThread();
    return ret;
}
