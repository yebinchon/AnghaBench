
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sdl_amedia_status_t ;
typedef int SDL_AMediaFormat ;


 int SDL_AMEDIA_OK ;
 int SDL_AMediaFormat_delete (int *) ;

sdl_amedia_status_t SDL_AMediaFormat_deleteP(SDL_AMediaFormat** aformat)
{
    if (!aformat)
        return SDL_AMEDIA_OK;
    sdl_amedia_status_t amc_ret = SDL_AMediaFormat_delete(*aformat);
    *aformat = ((void*)0);
    return amc_ret;
}
