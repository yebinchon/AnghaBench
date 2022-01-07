
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int surface; int display; } ;
typedef TYPE_1__ IJK_EGL ;
typedef int EGLint ;


 int ALOGE (char*,int ) ;
 int EGL_WIDTH ;
 int eglGetError () ;
 int eglQuerySurface (int ,int ,int ,int*) ;

__attribute__((used)) static int IJK_EGL_getSurfaceWidth(IJK_EGL* egl)
{
    EGLint width = 0;
    if (!eglQuerySurface(egl->display, egl->surface, EGL_WIDTH, &width)) {
        ALOGE("[EGL] eglQuerySurface(EGL_WIDTH) returned error %d", eglGetError());
        return 0;
    }

    return width;
}
