
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* opaque; } ;
struct TYPE_5__ {int renderer; } ;
typedef TYPE_2__ IJK_EGL ;


 int IJK_EGL_terminate (TYPE_2__*) ;

void IJK_EGL_releaseWindow(IJK_EGL* egl)
{
    if (!egl || !egl->opaque || !egl->opaque->renderer)
        return;

    IJK_EGL_terminate(egl);
}
