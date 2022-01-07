
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ SDL_Vout ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int SDL_VoutAndroid_invalidateAllBuffers_l (TYPE_1__*) ;

void SDL_VoutAndroid_invalidateAllBuffers(SDL_Vout *vout)
{
    SDL_LockMutex(vout->mutex);
    SDL_VoutAndroid_invalidateAllBuffers_l(vout);
    SDL_UnlockMutex(vout->mutex);
}
