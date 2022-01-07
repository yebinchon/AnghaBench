
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sdl_amedia_status_t ;
struct TYPE_5__ {int (* func_delete ) (TYPE_1__*) ;} ;
typedef TYPE_1__ SDL_AMediaCodec ;


 int SDL_AMEDIA_OK ;
 int assert (int (*) (TYPE_1__*)) ;
 int stub1 (TYPE_1__*) ;

sdl_amedia_status_t SDL_AMediaCodec_delete(SDL_AMediaCodec* acodec)
{
    if (!acodec)
        return SDL_AMEDIA_OK;

    assert(acodec->func_delete);
    return acodec->func_delete(acodec);
}
