
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int should_abort; int mutex; int wakeup_dequeue_cond; int wakeup_enqueue_cond; } ;
typedef TYPE_1__ SDL_AMediaCodec_FakeFifo ;


 int SDL_CondSignal (int ) ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;

void SDL_AMediaCodec_FakeFifo_abort(SDL_AMediaCodec_FakeFifo *fifo)
{
    SDL_LockMutex(fifo->mutex);
    fifo->should_abort = 1;
    SDL_CondSignal(fifo->wakeup_enqueue_cond);
    SDL_CondSignal(fifo->wakeup_dequeue_cond);
    SDL_UnlockMutex(fifo->mutex);
}
