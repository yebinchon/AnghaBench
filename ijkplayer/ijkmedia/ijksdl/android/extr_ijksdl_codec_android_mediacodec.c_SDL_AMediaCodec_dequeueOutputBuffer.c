
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
typedef int int64_t ;
struct TYPE_5__ {int (* func_dequeueOutputBuffer ) (TYPE_1__*,int *,int ) ;} ;
typedef int SDL_AMediaCodecBufferInfo ;
typedef TYPE_1__ SDL_AMediaCodec ;


 int assert (int (*) (TYPE_1__*,int *,int )) ;
 int stub1 (TYPE_1__*,int *,int ) ;

ssize_t SDL_AMediaCodec_dequeueOutputBuffer(SDL_AMediaCodec* acodec, SDL_AMediaCodecBufferInfo *info, int64_t timeoutUs)
{
    assert(acodec->func_dequeueOutputBuffer);
    return acodec->func_dequeueOutputBuffer(acodec, info, timeoutUs);
}
