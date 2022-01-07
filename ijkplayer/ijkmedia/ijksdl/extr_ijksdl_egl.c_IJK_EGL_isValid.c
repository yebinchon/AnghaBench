
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ context; scalar_t__ surface; scalar_t__ display; scalar_t__ window; } ;
typedef TYPE_1__ IJK_EGL ;
typedef int EGLBoolean ;


 int EGL_FALSE ;
 int EGL_TRUE ;

__attribute__((used)) static EGLBoolean IJK_EGL_isValid(IJK_EGL* egl)
{
    if (egl &&
        egl->window &&
        egl->display &&
        egl->surface &&
        egl->context) {
        return EGL_TRUE;
    }

    return EGL_FALSE;
}
