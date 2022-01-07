
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ SDL_mutex ;


 int free (TYPE_1__*) ;
 scalar_t__ mallocz (int) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

SDL_mutex *SDL_CreateMutex(void)
{
    SDL_mutex *mutex;
    mutex = (SDL_mutex *) mallocz(sizeof(SDL_mutex));
    if (!mutex)
        return ((void*)0);

    if (pthread_mutex_init(&mutex->id, ((void*)0)) != 0) {
        free(mutex);
        return ((void*)0);
    }

    return mutex;
}
