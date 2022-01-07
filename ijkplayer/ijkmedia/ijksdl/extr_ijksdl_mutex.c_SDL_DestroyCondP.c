
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_cond ;


 int SDL_DestroyCond (int *) ;

void SDL_DestroyCondP(SDL_cond **cond)
{

    if (cond) {
        SDL_DestroyCond(*cond);
        *cond = ((void*)0);
    }
}
