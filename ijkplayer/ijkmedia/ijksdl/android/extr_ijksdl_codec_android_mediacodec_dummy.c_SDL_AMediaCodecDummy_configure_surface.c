
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sdl_amedia_status_t ;
typedef int jobject ;
typedef int SDL_AMediaFormat ;
typedef int SDL_AMediaCrypto ;
typedef int SDL_AMediaCodec ;
typedef int JNIEnv ;


 int SDL_AMEDIA_OK ;

__attribute__((used)) static sdl_amedia_status_t SDL_AMediaCodecDummy_configure_surface(
    JNIEnv*env,
    SDL_AMediaCodec* acodec,
    const SDL_AMediaFormat* aformat,
    jobject android_surface,
    SDL_AMediaCrypto *crypto,
    uint32_t flags)
{
    return SDL_AMEDIA_OK;
}
