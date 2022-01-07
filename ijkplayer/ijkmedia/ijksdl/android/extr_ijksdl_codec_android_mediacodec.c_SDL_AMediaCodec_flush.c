
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sdl_amedia_status_t ;
struct TYPE_7__ {int (* func_flush ) (TYPE_2__*) ;TYPE_1__* common; } ;
struct TYPE_6__ {int fake_fifo; } ;
typedef TYPE_2__ SDL_AMediaCodec ;


 int SDL_AMediaCodec_FakeFifo_flush (int *) ;
 int assert (int (*) (TYPE_2__*)) ;
 int stub1 (TYPE_2__*) ;

sdl_amedia_status_t SDL_AMediaCodec_flush(SDL_AMediaCodec* acodec)
{
    assert(acodec->func_flush);
    SDL_AMediaCodec_FakeFifo_flush(&acodec->common->fake_fifo);
    return acodec->func_flush(acodec);
}
