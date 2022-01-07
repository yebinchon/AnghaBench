
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sdl_amedia_status_t ;
struct TYPE_6__ {TYPE_1__* opaque; } ;
struct TYPE_5__ {int dummy_fifo; } ;
typedef TYPE_2__ SDL_AMediaCodec ;


 int SDL_AMEDIA_OK ;
 int SDL_AMediaCodec_FakeFifo_destroy (int *) ;
 int SDL_AMediaCodec_FreeInternal (TYPE_2__*) ;

__attribute__((used)) static sdl_amedia_status_t SDL_AMediaCodecDummy_delete(SDL_AMediaCodec* acodec)
{
    SDL_AMediaCodec_FakeFifo_destroy(&acodec->opaque->dummy_fifo);

    SDL_AMediaCodec_FreeInternal(acodec);
    return SDL_AMEDIA_OK;
}
