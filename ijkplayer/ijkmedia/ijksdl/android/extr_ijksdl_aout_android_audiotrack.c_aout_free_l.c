
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* opaque; } ;
struct TYPE_6__ {int wakeup_mutex; int wakeup_cond; scalar_t__ buffer_size; int * buffer; } ;
typedef TYPE_1__ SDL_Aout_Opaque ;
typedef TYPE_2__ SDL_Aout ;


 int SDL_Aout_FreeInternal (TYPE_2__*) ;
 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;
 int aout_close_audio (TYPE_2__*) ;
 int free (int *) ;

__attribute__((used)) static void aout_free_l(SDL_Aout *aout)
{
    if (!aout)
        return;

    aout_close_audio(aout);

    SDL_Aout_Opaque *opaque = aout->opaque;
    if (opaque) {
        free(opaque->buffer);
        opaque->buffer = ((void*)0);
        opaque->buffer_size = 0;

        SDL_DestroyCond(opaque->wakeup_cond);
        SDL_DestroyMutex(opaque->wakeup_mutex);
    }

    SDL_Aout_FreeInternal(aout);
}
