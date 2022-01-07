
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bmp; } ;
typedef TYPE_1__ Frame ;


 int SDL_VoutFreeYUVOverlay (int *) ;

__attribute__((used)) static void free_picture(Frame *vp)
{
    if (vp->bmp) {
        SDL_VoutFreeYUVOverlay(vp->bmp);
        vp->bmp = ((void*)0);
    }
}
