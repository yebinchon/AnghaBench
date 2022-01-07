
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* opaque; scalar_t__ mutex; } ;
typedef TYPE_1__ SDL_AMediaFormat ;


 int SDL_DestroyMutexP (scalar_t__*) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) inline static void SDL_AMediaFormat_FreeInternal(SDL_AMediaFormat *aformat)
{
    if (!aformat)
        return;

    if (aformat->mutex) {
        SDL_DestroyMutexP(&aformat->mutex);
    }

    free(aformat->opaque);
    memset(aformat, 0, sizeof(SDL_AMediaFormat));
    free(aformat);
}
