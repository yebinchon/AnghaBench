
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* opaque; int * mutex; } ;
typedef TYPE_1__ SDL_Vout ;


 int * SDL_CreateMutex () ;
 TYPE_1__* calloc (int,size_t) ;
 int free (TYPE_1__*) ;

__attribute__((used)) inline static SDL_Vout *SDL_Vout_CreateInternal(size_t opaque_size)
{
    SDL_Vout *vout = (SDL_Vout*) calloc(1, sizeof(SDL_Vout));
    if (!vout)
        return ((void*)0);

    vout->opaque = calloc(1, opaque_size);
    if (!vout->opaque) {
        free(vout);
        return ((void*)0);
    }

    vout->mutex = SDL_CreateMutex();
    if (vout->mutex == ((void*)0)) {
        free(vout->opaque);
        free(vout);
        return ((void*)0);
    }

    return vout;
}
