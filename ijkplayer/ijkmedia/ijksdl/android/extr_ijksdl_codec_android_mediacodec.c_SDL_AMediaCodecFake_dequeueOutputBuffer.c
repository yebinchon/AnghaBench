
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int int64_t ;
struct TYPE_7__ {scalar_t__ (* func_dequeueOutputBuffer ) (TYPE_2__*,int *,int ) ;TYPE_1__* common; } ;
struct TYPE_6__ {int fake_fifo; } ;
typedef int SDL_AMediaCodecBufferInfo ;
typedef TYPE_2__ SDL_AMediaCodec ;


 scalar_t__ SDL_AMediaCodec_FakeFifo_dequeueOutputBuffer (int *,int *,int ) ;
 scalar_t__ SDL_AMediaCodec_FakeFifo_size (int *) ;
 int assert (scalar_t__ (*) (TYPE_2__*,int *,int )) ;
 scalar_t__ stub1 (TYPE_2__*,int *,int ) ;

ssize_t SDL_AMediaCodecFake_dequeueOutputBuffer(SDL_AMediaCodec* acodec, SDL_AMediaCodecBufferInfo *info, int64_t timeoutUs)
{
    if (SDL_AMediaCodec_FakeFifo_size(&acodec->common->fake_fifo) > 0) {
        ssize_t ret = SDL_AMediaCodec_FakeFifo_dequeueOutputBuffer(&acodec->common->fake_fifo, info, 0);
        if (ret >= 0)
            return ret;
    }

    assert(acodec->func_dequeueOutputBuffer);
    return acodec->func_dequeueOutputBuffer(acodec, info, timeoutUs);
}
