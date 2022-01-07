
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_mutex ;


 int SDL_DestroyMutex (int *) ;

void SDL_DestroyMutexP(SDL_mutex **mutex)
{
    if (mutex) {
        SDL_DestroyMutex(*mutex);
        *mutex = ((void*)0);
    }
}
