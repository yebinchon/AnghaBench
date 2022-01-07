
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sdl_amedia_status_t ;
struct TYPE_4__ {void* wakeup_dequeue_cond; void* wakeup_enqueue_cond; int mutex; } ;
typedef TYPE_1__ SDL_AMediaCodec_FakeFifo ;


 int SDL_AMEDIA_OK ;
 void* SDL_CreateCond () ;
 int SDL_CreateMutex () ;
 int memset (TYPE_1__*,int ,int) ;

sdl_amedia_status_t SDL_AMediaCodec_FakeFifo_init(SDL_AMediaCodec_FakeFifo *fifo)
{
    memset(fifo, 0, sizeof(SDL_AMediaCodec_FakeFifo));

    fifo->mutex = SDL_CreateMutex();
    fifo->wakeup_enqueue_cond = SDL_CreateCond();
    fifo->wakeup_dequeue_cond = SDL_CreateCond();

    return SDL_AMEDIA_OK;
}
