
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef int SDL_VoutOverlay ;
typedef TYPE_1__ SDL_Vout ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int * func_create_overlay_l (int,int,int,TYPE_1__*) ;

__attribute__((used)) static SDL_VoutOverlay *func_create_overlay(int width, int height, int frame_format, SDL_Vout *vout)
{
    SDL_LockMutex(vout->mutex);
    SDL_VoutOverlay *overlay = func_create_overlay_l(width, height, frame_format, vout);
    SDL_UnlockMutex(vout->mutex);
    return overlay;
}
