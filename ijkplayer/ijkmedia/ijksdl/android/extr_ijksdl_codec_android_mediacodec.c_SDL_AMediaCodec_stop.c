
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sdl_amedia_status_t ;
struct TYPE_7__ {int is_started; int (* func_stop ) (TYPE_2__*) ;TYPE_1__* common; } ;
struct TYPE_6__ {int fake_fifo; } ;
typedef TYPE_2__ SDL_AMediaCodec ;


 int SDL_AMediaCodec_FakeFifo_abort (int *) ;
 int assert (int (*) (TYPE_2__*)) ;
 int stub1 (TYPE_2__*) ;

sdl_amedia_status_t SDL_AMediaCodec_stop(SDL_AMediaCodec* acodec)
{
    assert(acodec->func_stop);
    acodec->is_started = 0;
    SDL_AMediaCodec_FakeFifo_abort(&acodec->common->fake_fifo);
    return acodec->func_stop(acodec);
}
