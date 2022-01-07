
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ opaque; int * opaque_class; } ;
typedef int IJK_EGL_Opaque ;
typedef TYPE_1__ IJK_EGL ;


 int free (TYPE_1__*) ;
 int g_class ;
 scalar_t__ mallocz (int) ;

IJK_EGL *IJK_EGL_create()
{
    IJK_EGL *egl = (IJK_EGL*) mallocz(sizeof(IJK_EGL));
    if (!egl)
        return ((void*)0);

    egl->opaque_class = &g_class;
    egl->opaque = mallocz(sizeof(IJK_EGL_Opaque));
    if (!egl->opaque) {
        free(egl);
        return ((void*)0);
    }

    return egl;
}
