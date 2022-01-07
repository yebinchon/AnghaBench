
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* display_overlay ) (TYPE_1__*,int *) ;} ;
typedef int SDL_VoutOverlay ;
typedef TYPE_1__ SDL_Vout ;


 int stub1 (TYPE_1__*,int *) ;

int SDL_VoutDisplayYUVOverlay(SDL_Vout *vout, SDL_VoutOverlay *overlay)
{
    if (vout && overlay && vout->display_overlay)
        return vout->display_overlay(vout, overlay);

    return -1;
}
