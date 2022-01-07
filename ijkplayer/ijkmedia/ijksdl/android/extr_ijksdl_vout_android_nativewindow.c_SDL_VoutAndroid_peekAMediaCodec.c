
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mutex; TYPE_1__* opaque; } ;
struct TYPE_4__ {int * acodec; } ;
typedef TYPE_1__ SDL_Vout_Opaque ;
typedef TYPE_2__ SDL_Vout ;
typedef int SDL_AMediaCodec ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;

SDL_AMediaCodec *SDL_VoutAndroid_peekAMediaCodec(SDL_Vout *vout)
{
    SDL_Vout_Opaque *opaque = vout->opaque;
    SDL_AMediaCodec *acodec = ((void*)0);

    SDL_LockMutex(vout->mutex);
    acodec = opaque->acodec;
    SDL_UnlockMutex(vout->mutex);
    return acodec;
}
