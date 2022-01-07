
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* common; } ;
struct TYPE_4__ {int fake_fifo; } ;
typedef TYPE_2__ SDL_AMediaCodec ;


 int SDL_AMediaCodec_FakeFifo_abort (int *) ;

void SDL_AMediaCodecFake_abort(SDL_AMediaCodec* acodec)
{
    SDL_AMediaCodec_FakeFifo_abort(&acodec->common->fake_fifo);
}
