
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ SDL_Vout ;
typedef int SDL_AMediaCodecBufferProxy ;
typedef int SDL_AMediaCodecBufferInfo ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int * SDL_VoutAndroid_obtainBufferProxy_l (TYPE_1__*,int,int,int *) ;

SDL_AMediaCodecBufferProxy *SDL_VoutAndroid_obtainBufferProxy(SDL_Vout *vout, int acodec_serial, int buffer_index, SDL_AMediaCodecBufferInfo *buffer_info)
{
    SDL_AMediaCodecBufferProxy *proxy = ((void*)0);
    SDL_LockMutex(vout->mutex);
    proxy = SDL_VoutAndroid_obtainBufferProxy_l(vout, acodec_serial, buffer_index, buffer_info);
    SDL_UnlockMutex(vout->mutex);
    return proxy;
}
