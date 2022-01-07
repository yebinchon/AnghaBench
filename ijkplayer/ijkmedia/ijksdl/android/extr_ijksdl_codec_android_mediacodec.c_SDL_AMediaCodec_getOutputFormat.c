
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * (* func_getOutputFormat ) (TYPE_1__*) ;} ;
typedef int SDL_AMediaFormat ;
typedef TYPE_1__ SDL_AMediaCodec ;


 int assert (int * (*) (TYPE_1__*)) ;
 int * stub1 (TYPE_1__*) ;

SDL_AMediaFormat* SDL_AMediaCodec_getOutputFormat(SDL_AMediaCodec* acodec)
{
    assert(acodec->func_getOutputFormat);
    return acodec->func_getOutputFormat(acodec);
}
