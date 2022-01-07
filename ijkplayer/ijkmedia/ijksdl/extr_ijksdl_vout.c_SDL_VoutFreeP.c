
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_Vout ;


 int SDL_VoutFree (int *) ;

void SDL_VoutFreeP(SDL_Vout **pvout)
{
    if (!pvout)
        return;

    SDL_VoutFree(*pvout);
    *pvout = ((void*)0);
}
