
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * (* create_overlay ) (int,int,int,TYPE_1__*) ;} ;
typedef int SDL_VoutOverlay ;
typedef TYPE_1__ SDL_Vout ;


 int * stub1 (int,int,int,TYPE_1__*) ;

SDL_VoutOverlay *SDL_Vout_CreateOverlay(int width, int height, int frame_format, SDL_Vout *vout)
{
    if (vout && vout->create_overlay)
        return vout->create_overlay(width, height, frame_format, vout);

    return ((void*)0);
}
