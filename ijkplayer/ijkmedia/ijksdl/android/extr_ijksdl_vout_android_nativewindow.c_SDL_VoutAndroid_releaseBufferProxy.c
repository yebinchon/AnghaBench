
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ SDL_Vout ;
typedef int SDL_AMediaCodecBufferProxy ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int SDL_VoutAndroid_releaseBufferProxy_l (TYPE_1__*,int *,int) ;

__attribute__((used)) static int SDL_VoutAndroid_releaseBufferProxy(SDL_Vout *vout, SDL_AMediaCodecBufferProxy *proxy, bool render)
{
    int ret = 0;

    if (!proxy)
        return 0;

    SDL_LockMutex(vout->mutex);
    ret = SDL_VoutAndroid_releaseBufferProxy_l(vout, proxy, render);
    SDL_UnlockMutex(vout->mutex);
    return ret;
}
