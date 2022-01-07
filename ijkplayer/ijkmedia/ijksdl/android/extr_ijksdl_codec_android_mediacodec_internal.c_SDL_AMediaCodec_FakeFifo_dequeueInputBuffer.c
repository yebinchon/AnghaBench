
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
typedef int int64_t ;
struct TYPE_3__ {scalar_t__ size; int end; scalar_t__ should_abort; int mutex; int wakeup_enqueue_cond; } ;
typedef TYPE_1__ SDL_AMediaCodec_FakeFifo ;


 scalar_t__ FAKE_BUFFER_QUEUE_SIZE ;
 int SDL_AMEDIA_ERROR_UNKNOWN ;
 int SDL_CondWaitTimeout (int ,int ,int) ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;

ssize_t SDL_AMediaCodec_FakeFifo_dequeueInputBuffer(SDL_AMediaCodec_FakeFifo* fifo, int64_t timeoutUs)
{
    int ret_index = -1;
    if (fifo->should_abort)
        return SDL_AMEDIA_ERROR_UNKNOWN;

    SDL_LockMutex(fifo->mutex);
    if (!fifo->should_abort) {
        if (fifo->size >= FAKE_BUFFER_QUEUE_SIZE) {
            SDL_CondWaitTimeout(fifo->wakeup_enqueue_cond, fifo->mutex, timeoutUs / 1000);
        }

        if (fifo->size < FAKE_BUFFER_QUEUE_SIZE) {
            ret_index = fifo->end;
        }
    }
    SDL_UnlockMutex(fifo->mutex);

    if (fifo->should_abort)
        return -1;

    return ret_index;
}
