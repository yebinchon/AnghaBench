
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* opaque; int * mutex; } ;
typedef TYPE_1__ SDL_AMediaFormat ;


 int * SDL_CreateMutex () ;
 int free (TYPE_1__*) ;
 TYPE_1__* mallocz (size_t) ;

__attribute__((used)) inline static SDL_AMediaFormat *SDL_AMediaFormat_CreateInternal(size_t opaque_size)
{
    SDL_AMediaFormat *aformat = (SDL_AMediaFormat*) mallocz(sizeof(SDL_AMediaFormat));
    if (!aformat)
        return ((void*)0);

    aformat->opaque = mallocz(opaque_size);
    if (!aformat->opaque) {
        free(aformat);
        return ((void*)0);
    }

    aformat->mutex = SDL_CreateMutex();
    if (aformat->mutex == ((void*)0)) {
        free(aformat->opaque);
        free(aformat);
        return ((void*)0);
    }

    return aformat;
}
