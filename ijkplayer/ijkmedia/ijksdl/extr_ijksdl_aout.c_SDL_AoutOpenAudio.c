
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* open_audio ) (TYPE_1__*,int const*,int *) ;} ;
typedef int SDL_AudioSpec ;
typedef TYPE_1__ SDL_Aout ;


 int stub1 (TYPE_1__*,int const*,int *) ;

int SDL_AoutOpenAudio(SDL_Aout *aout, const SDL_AudioSpec *desired, SDL_AudioSpec *obtained)
{
    if (aout && desired && aout->open_audio)
        return aout->open_audio(aout, desired, obtained);

    return -1;
}
