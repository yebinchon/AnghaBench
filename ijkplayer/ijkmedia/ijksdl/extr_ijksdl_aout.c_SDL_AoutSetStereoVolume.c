
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* set_volume ) (TYPE_1__*,float,float) ;} ;
typedef TYPE_1__ SDL_Aout ;


 int stub1 (TYPE_1__*,float,float) ;

void SDL_AoutSetStereoVolume(SDL_Aout *aout, float left_volume, float right_volume)
{
    if (aout && aout->set_volume)
        aout->set_volume(aout, left_volume, right_volume);
}
