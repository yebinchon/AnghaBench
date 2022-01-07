
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* free_l ) (TYPE_1__*) ;} ;
typedef TYPE_1__ SDL_VoutOverlay ;


 int free (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void SDL_VoutFreeYUVOverlay(SDL_VoutOverlay *overlay)
{
    if (!overlay)
        return;

    if (overlay->free_l) {
        overlay->free_l(overlay);
    } else {
        free(overlay);
    }
}
