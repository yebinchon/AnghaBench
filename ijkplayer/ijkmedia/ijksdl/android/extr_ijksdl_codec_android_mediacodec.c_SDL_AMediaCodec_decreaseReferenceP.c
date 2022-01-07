
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_AMediaCodec ;


 int SDL_AMediaCodec_decreaseReference (int *) ;

void SDL_AMediaCodec_decreaseReferenceP(SDL_AMediaCodec **acodec)
{
    if (!acodec)
        return;

    SDL_AMediaCodec_decreaseReference(*acodec);
    *acodec = ((void*)0);
}
