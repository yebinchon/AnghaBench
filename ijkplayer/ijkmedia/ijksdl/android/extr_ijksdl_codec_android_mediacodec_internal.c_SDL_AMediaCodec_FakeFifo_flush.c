
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; scalar_t__ size; scalar_t__ end; scalar_t__ begin; scalar_t__ should_abort; } ;
typedef TYPE_1__ SDL_AMediaCodec_FakeFifo ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;

void SDL_AMediaCodec_FakeFifo_flush(SDL_AMediaCodec_FakeFifo *fifo)
{
    if (fifo->should_abort)
        return;

    SDL_LockMutex(fifo->mutex);
    fifo->begin = 0;
    fifo->end = 0;
    fifo->size = 0;
    SDL_UnlockMutex(fifo->mutex);
}
