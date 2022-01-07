
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sdl_amedia_status_t ;
struct TYPE_5__ {int is_configured; int is_started; int (* func_configure ) (TYPE_1__*,int const*,int *,int *,int ) ;} ;
typedef int SDL_AMediaFormat ;
typedef int SDL_AMediaCrypto ;
typedef TYPE_1__ SDL_AMediaCodec ;
typedef int ANativeWindow ;


 int assert (int (*) (TYPE_1__*,int const*,int *,int *,int )) ;
 int stub1 (TYPE_1__*,int const*,int *,int *,int ) ;

sdl_amedia_status_t SDL_AMediaCodec_configure(
    SDL_AMediaCodec* acodec,
    const SDL_AMediaFormat* aformat,
    ANativeWindow* surface,
    SDL_AMediaCrypto *crypto,
    uint32_t flags)
{
    assert(acodec->func_configure);
    sdl_amedia_status_t ret = acodec->func_configure(acodec, aformat, surface, crypto, flags);
    acodec->is_configured = 1;
    acodec->is_started = 0;
    return ret;
}
