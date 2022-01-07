
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_Vout ;
typedef int SDL_AMediaCodecBufferProxy ;


 int SDL_VoutAndroid_releaseBufferProxy (int *,int *,int) ;

int SDL_VoutAndroid_releaseBufferProxyP(SDL_Vout *vout, SDL_AMediaCodecBufferProxy **proxy, bool render)
{
    int ret = 0;

    if (!proxy)
        return 0;

    ret = SDL_VoutAndroid_releaseBufferProxy(vout, *proxy, render);
    *proxy = ((void*)0);
    return ret;
}
