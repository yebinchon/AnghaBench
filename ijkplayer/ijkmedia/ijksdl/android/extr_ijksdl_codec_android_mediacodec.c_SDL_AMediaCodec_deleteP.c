
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sdl_amedia_status_t ;
typedef int SDL_AMediaCodec ;


 int SDL_AMEDIA_OK ;
 int SDL_AMediaCodec_delete (int *) ;

sdl_amedia_status_t SDL_AMediaCodec_deleteP(SDL_AMediaCodec** acodec)
{
    if (!acodec)
        return SDL_AMEDIA_OK;
    sdl_amedia_status_t ret = SDL_AMediaCodec_delete(*acodec);
    *acodec = ((void*)0);
    return ret;
}
