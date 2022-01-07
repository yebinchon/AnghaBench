
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_Aout ;


 int SDL_AoutFree (int *) ;

void SDL_AoutFreeP(SDL_Aout **paout)
{
    if (!paout)
        return;

    SDL_AoutFree(*paout);
    *paout = ((void*)0);
}
