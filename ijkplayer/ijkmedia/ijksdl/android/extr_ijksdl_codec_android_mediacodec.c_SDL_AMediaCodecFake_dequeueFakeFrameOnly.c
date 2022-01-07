
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
typedef int int64_t ;
struct TYPE_5__ {TYPE_1__* common; } ;
struct TYPE_4__ {int fake_fifo; } ;
typedef int SDL_AMediaCodecBufferInfo ;
typedef TYPE_2__ SDL_AMediaCodec ;


 int SDL_AMediaCodec_FakeFifo_dequeueOutputBuffer (int *,int *,int ) ;

ssize_t SDL_AMediaCodecFake_dequeueFakeFrameOnly(SDL_AMediaCodec* acodec, SDL_AMediaCodecBufferInfo *info, int64_t timeoutUs)
{
    return SDL_AMediaCodec_FakeFifo_dequeueOutputBuffer(&acodec->common->fake_fifo, info, 0);
}
