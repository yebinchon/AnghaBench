
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Uint32 ;
struct TYPE_3__ {int overlay_format; } ;
typedef TYPE_1__ SDL_Vout ;



int SDL_VoutSetOverlayFormat(SDL_Vout *vout, Uint32 overlay_format)
{
    if (!vout)
        return -1;

    vout->overlay_format = overlay_format;
    return 0;
}
