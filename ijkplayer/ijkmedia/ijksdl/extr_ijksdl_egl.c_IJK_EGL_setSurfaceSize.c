
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; int window; } ;
typedef TYPE_1__ IJK_EGL ;
typedef int EGLBoolean ;


 int ALOGE (char*,int) ;
 int ALOGI (char*,int,int,int,int) ;
 int ANativeWindow_getFormat (int ) ;
 int ANativeWindow_setBuffersGeometry (int ,int,int,int) ;
 int EGL_FALSE ;
 int EGL_TRUE ;
 void* IJK_EGL_getSurfaceHeight (TYPE_1__*) ;
 void* IJK_EGL_getSurfaceWidth (TYPE_1__*) ;
 int IJK_EGL_isValid (TYPE_1__*) ;

__attribute__((used)) static EGLBoolean IJK_EGL_setSurfaceSize(IJK_EGL* egl, int width, int height)
{
    if (!IJK_EGL_isValid(egl))
        return EGL_FALSE;
    return EGL_FALSE;
}
