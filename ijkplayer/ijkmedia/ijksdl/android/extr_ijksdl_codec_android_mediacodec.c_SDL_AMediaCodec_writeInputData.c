
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ssize_t ;
struct TYPE_5__ {int (* func_writeInputData ) (TYPE_1__*,size_t,int const*,size_t) ;} ;
typedef TYPE_1__ SDL_AMediaCodec ;


 int assert (int (*) (TYPE_1__*,size_t,int const*,size_t)) ;
 int stub1 (TYPE_1__*,size_t,int const*,size_t) ;

ssize_t SDL_AMediaCodec_writeInputData(SDL_AMediaCodec* acodec, size_t idx, const uint8_t *data, size_t size)
{
    assert(acodec->func_writeInputData);
    return acodec->func_writeInputData(acodec, idx, data, size);
}
