
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sdl_amedia_status_t ;
struct TYPE_5__ {int (* func_releaseOutputBuffer ) (TYPE_1__*,size_t,int) ;} ;
typedef TYPE_1__ SDL_AMediaCodec ;


 int assert (int (*) (TYPE_1__*,size_t,int)) ;
 int stub1 (TYPE_1__*,size_t,int) ;

sdl_amedia_status_t SDL_AMediaCodec_releaseOutputBuffer(SDL_AMediaCodec* acodec, size_t idx, bool render)
{
    assert(acodec->func_releaseOutputBuffer);
    return acodec->func_releaseOutputBuffer(acodec, idx, render);
}
