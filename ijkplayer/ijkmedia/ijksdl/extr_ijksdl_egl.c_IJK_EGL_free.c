
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IJK_EGL ;


 int IJK_EGL_terminate (int *) ;
 int free (int *) ;
 int memset (int *,int ,int) ;

void IJK_EGL_free(IJK_EGL *egl)
{
    if (!egl)
        return;

    IJK_EGL_terminate(egl);

    memset(egl, 0, sizeof(IJK_EGL));
    free(egl);
}
