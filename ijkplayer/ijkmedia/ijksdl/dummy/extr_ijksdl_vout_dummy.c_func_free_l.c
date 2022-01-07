
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * opaque; } ;
typedef int SDL_Vout_Opaque ;
typedef TYPE_1__ SDL_Vout ;


 int SDL_Vout_FreeInternal (TYPE_1__*) ;

__attribute__((used)) static void func_free_l(SDL_Vout *vout)
{
    if (!vout)
        return;

    SDL_Vout_Opaque *opaque = vout->opaque;
    if (opaque) {
    }

    SDL_Vout_FreeInternal(vout);
}
