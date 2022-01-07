
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sdl_amedia_status_t ;
struct TYPE_5__ {int (* func_delete ) (TYPE_1__*) ;} ;
typedef TYPE_1__ SDL_AMediaFormat ;


 int SDL_AMEDIA_OK ;
 int assert (int (*) (TYPE_1__*)) ;
 int stub1 (TYPE_1__*) ;

sdl_amedia_status_t SDL_AMediaFormat_delete(SDL_AMediaFormat* aformat)
{
    if (!aformat)
        return SDL_AMEDIA_OK;
    assert(aformat->func_delete);
    return aformat->func_delete(aformat);
}
