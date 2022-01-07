
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* unref ) (TYPE_1__*) ;} ;
typedef TYPE_1__ SDL_VoutOverlay ;


 int stub1 (TYPE_1__*) ;

void SDL_VoutUnrefYUVOverlay(SDL_VoutOverlay *overlay)
{
    if (overlay && overlay->unref)
        overlay->unref(overlay);
}
