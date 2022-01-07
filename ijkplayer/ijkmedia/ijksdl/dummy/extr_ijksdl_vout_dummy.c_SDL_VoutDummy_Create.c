
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int display_overlay; int free_l; } ;
typedef int SDL_Vout_Opaque ;
typedef TYPE_1__ SDL_Vout ;


 TYPE_1__* SDL_Vout_CreateInternal (int) ;
 int func_display_overlay ;
 int func_free_l ;

SDL_Vout *SDL_VoutDummy_Create()
{
    SDL_Vout *vout = SDL_Vout_CreateInternal(sizeof(SDL_Vout_Opaque));
    if (!vout)
        return ((void*)0);



    vout->free_l = func_free_l;
    vout->display_overlay = func_display_overlay;

    return vout;
}
