
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
 int func_display_overlay_l (TYPE_1__*,int *) ;

__attribute__((used)) static int func_display_overlay(SDL_Vout *vout, SDL_VoutOverlay *overlay)
{
    SDL_LockMutex(vout->mutex);
    int retval = func_display_overlay_l(vout, overlay);
    SDL_UnlockMutex(vout->mutex);
    return retval;
}
