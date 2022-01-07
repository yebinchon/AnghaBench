
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* opaque; scalar_t__ mutex; } ;
typedef TYPE_1__ SDL_Vout ;


 int SDL_DestroyMutex (scalar_t__) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) inline static void SDL_Vout_FreeInternal(SDL_Vout *vout)
{
    if (!vout)
        return;

    if (vout->mutex) {
        SDL_DestroyMutex(vout->mutex);
    }

    free(vout->opaque);
    memset(vout, 0, sizeof(SDL_Vout));
    free(vout);
}
