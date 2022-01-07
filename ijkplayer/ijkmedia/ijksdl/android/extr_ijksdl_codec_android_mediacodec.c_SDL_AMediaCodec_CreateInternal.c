
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* common; void* opaque; int * mutex; } ;
struct TYPE_5__ {int fake_fifo; } ;
typedef int SDL_AMediaCodec_Common ;
typedef TYPE_2__ SDL_AMediaCodec ;


 int SDL_AMediaCodec_FakeFifo_init (int *) ;
 int SDL_AMediaCodec_FreeInternal (TYPE_2__*) ;
 int * SDL_CreateMutex () ;
 void* mallocz (int) ;

SDL_AMediaCodec *SDL_AMediaCodec_CreateInternal(size_t opaque_size)
{
    SDL_AMediaCodec *acodec = (SDL_AMediaCodec*) mallocz(sizeof(SDL_AMediaCodec));
    if (!acodec)
        return ((void*)0);

    acodec->mutex = SDL_CreateMutex();
    if (acodec->mutex == ((void*)0))
        goto fail;

    acodec->opaque = mallocz(opaque_size);
    if (!acodec->opaque)
        goto fail;

    acodec->common = mallocz(sizeof(SDL_AMediaCodec_Common));
    if (!acodec->common)
        goto fail;

    SDL_AMediaCodec_FakeFifo_init(&acodec->common->fake_fifo);

    return acodec;
fail:
    SDL_AMediaCodec_FreeInternal(acodec);
    return ((void*)0);
}
