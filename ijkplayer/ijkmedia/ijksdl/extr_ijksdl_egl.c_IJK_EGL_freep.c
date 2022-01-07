
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IJK_EGL ;


 int IJK_EGL_free (int *) ;

void IJK_EGL_freep(IJK_EGL **egl)
{
    if (!egl || !*egl)
        return;

    IJK_EGL_free(*egl);
    *egl = ((void*)0);
}
