
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ SDL_cond ;


 int free (TYPE_1__*) ;
 scalar_t__ mallocz (int) ;
 scalar_t__ pthread_cond_init (int *,int *) ;

SDL_cond *SDL_CreateCond(void)
{
    SDL_cond *cond;
    cond = (SDL_cond *) mallocz(sizeof(SDL_cond));
    if (!cond)
        return ((void*)0);

    if (pthread_cond_init(&cond->id, ((void*)0)) != 0) {
        free(cond);
        return ((void*)0);
    }

    return cond;
}
