
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* opaque; int * mutex; } ;
typedef TYPE_1__ SDL_Aout ;


 int * SDL_CreateMutex () ;
 int free (TYPE_1__*) ;
 TYPE_1__* mallocz (size_t) ;

__attribute__((used)) inline static SDL_Aout *SDL_Aout_CreateInternal(size_t opaque_size)
{
    SDL_Aout *aout = (SDL_Aout*) mallocz(sizeof(SDL_Aout));
    if (!aout)
        return ((void*)0);

    aout->opaque = mallocz(opaque_size);
    if (!aout->opaque) {
        free(aout);
        return ((void*)0);
    }

    aout->mutex = SDL_CreateMutex();
    if (aout->mutex == ((void*)0)) {
        free(aout->opaque);
        free(aout);
        return ((void*)0);
    }

    return aout;
}
