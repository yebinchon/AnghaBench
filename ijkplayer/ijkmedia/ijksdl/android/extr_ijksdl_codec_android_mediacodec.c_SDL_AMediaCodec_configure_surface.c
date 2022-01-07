
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sdl_amedia_status_t ;
typedef int jobject ;
struct TYPE_5__ {int is_configured; int is_started; int (* func_configure_surface ) (int *,TYPE_1__*,int const*,int ,int *,int ) ;} ;
typedef int SDL_AMediaFormat ;
typedef int SDL_AMediaCrypto ;
typedef TYPE_1__ SDL_AMediaCodec ;
typedef int JNIEnv ;


 int assert (int (*) (int *,TYPE_1__*,int const*,int ,int *,int )) ;
 int stub1 (int *,TYPE_1__*,int const*,int ,int *,int ) ;

sdl_amedia_status_t SDL_AMediaCodec_configure_surface(
    JNIEnv*env,
    SDL_AMediaCodec* acodec,
    const SDL_AMediaFormat* aformat,
    jobject android_surface,
    SDL_AMediaCrypto *crypto,
    uint32_t flags)
{
    assert(acodec->func_configure_surface);
    sdl_amedia_status_t ret = acodec->func_configure_surface(env, acodec, aformat, android_surface, crypto, flags);
    acodec->is_configured = 1;
    acodec->is_started = 0;
    return ret;
}
