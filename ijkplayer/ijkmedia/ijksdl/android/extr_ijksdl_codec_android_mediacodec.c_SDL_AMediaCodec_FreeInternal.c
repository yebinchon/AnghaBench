
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mutex; struct TYPE_5__* opaque; struct TYPE_5__* common; int fake_fifo; } ;
typedef TYPE_1__ SDL_AMediaCodec ;


 int SDL_AMediaCodec_FakeFifo_destroy (int *) ;
 int SDL_DestroyMutexP (scalar_t__*) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void SDL_AMediaCodec_FreeInternal(SDL_AMediaCodec *acodec)
{
    if (!acodec)
        return;

    if (acodec->common) {
        SDL_AMediaCodec_FakeFifo_destroy(&acodec->common->fake_fifo);
        free(acodec->common);
    }

    free(acodec->opaque);

    if (acodec->mutex)
        SDL_DestroyMutexP(&acodec->mutex);

    memset(acodec, 0, sizeof(SDL_AMediaCodec));
    free(acodec);
}
