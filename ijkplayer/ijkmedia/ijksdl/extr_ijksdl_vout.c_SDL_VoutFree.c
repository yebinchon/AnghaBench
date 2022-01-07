
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* free_l ) (TYPE_1__*) ;} ;
typedef TYPE_1__ SDL_Vout ;


 int free (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void SDL_VoutFree(SDL_Vout *vout)
{
    if (!vout)
        return;

    if (vout->free_l) {
        vout->free_l(vout);
    } else {
        free(vout);
    }
}
