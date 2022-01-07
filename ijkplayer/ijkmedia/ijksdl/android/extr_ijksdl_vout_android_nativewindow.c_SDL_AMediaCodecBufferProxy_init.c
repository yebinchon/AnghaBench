
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_AMediaCodecBufferProxy ;


 int SDL_AMediaCodecBufferProxy_reset (int *) ;
 int assert (int *) ;

__attribute__((used)) static void SDL_AMediaCodecBufferProxy_init(SDL_AMediaCodecBufferProxy *proxy)
{
    assert(proxy);
    SDL_AMediaCodecBufferProxy_reset(proxy);
}
