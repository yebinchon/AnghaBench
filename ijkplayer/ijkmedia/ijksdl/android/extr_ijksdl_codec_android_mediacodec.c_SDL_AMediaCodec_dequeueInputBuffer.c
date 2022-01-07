
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
typedef int int64_t ;
struct TYPE_5__ {int (* func_dequeueInputBuffer ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ SDL_AMediaCodec ;


 int assert (int (*) (TYPE_1__*,int )) ;
 int stub1 (TYPE_1__*,int ) ;

ssize_t SDL_AMediaCodec_dequeueInputBuffer(SDL_AMediaCodec* acodec, int64_t timeoutUs)
{
    assert(acodec->func_dequeueInputBuffer);
    return acodec->func_dequeueInputBuffer(acodec, timeoutUs);
}
