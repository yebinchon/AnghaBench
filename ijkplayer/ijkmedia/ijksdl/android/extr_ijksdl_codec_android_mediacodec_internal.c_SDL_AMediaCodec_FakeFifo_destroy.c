
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wakeup_dequeue_cond; int wakeup_enqueue_cond; scalar_t__ mutex; } ;
typedef TYPE_1__ SDL_AMediaCodec_FakeFifo ;


 int SDL_AMediaCodec_FakeFifo_abort (TYPE_1__*) ;
 int SDL_DestroyCondP (int *) ;
 int SDL_DestroyMutexP (scalar_t__*) ;
 int memset (TYPE_1__*,int ,int) ;

void SDL_AMediaCodec_FakeFifo_destroy(SDL_AMediaCodec_FakeFifo *fifo)
{
    if (!fifo)
        return;

    if (fifo->mutex)
        SDL_AMediaCodec_FakeFifo_abort(fifo);

    SDL_DestroyMutexP(&fifo->mutex);
    SDL_DestroyCondP(&fifo->wakeup_enqueue_cond);
    SDL_DestroyCondP(&fifo->wakeup_dequeue_cond);

    memset(fifo, 0, sizeof(SDL_AMediaCodec_FakeFifo));
}
