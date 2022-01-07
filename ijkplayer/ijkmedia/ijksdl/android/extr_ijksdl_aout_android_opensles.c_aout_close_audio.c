
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int (* SetPlayState ) (TYPE_5__**,int ) ;} ;
struct TYPE_10__ {int (* Clear ) (TYPE_4__**) ;} ;
struct TYPE_9__ {int (* Destroy ) (TYPE_3__**) ;} ;
struct TYPE_8__ {TYPE_1__* opaque; } ;
struct TYPE_7__ {int abort_request; int buffer; TYPE_3__** slPlayerObject; TYPE_5__** slPlayItf; int * slVolumeItf; TYPE_4__** slBufferQueueItf; int * audio_tid; int wakeup_mutex; int wakeup_cond; } ;
typedef TYPE_1__ SDL_Aout_Opaque ;
typedef TYPE_2__ SDL_Aout ;


 int SDLTRACE (char*) ;
 int SDL_CondSignal (int ) ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int SDL_WaitThread (int *,int *) ;
 int SL_PLAYSTATE_STOPPED ;
 int freep (void**) ;
 int stub1 (TYPE_5__**,int ) ;
 int stub2 (TYPE_4__**) ;
 int stub3 (TYPE_3__**) ;

__attribute__((used)) static void aout_close_audio(SDL_Aout *aout)
{
    SDLTRACE("aout_close_audio()\n");
    SDL_Aout_Opaque *opaque = aout->opaque;
    if (!opaque)
        return;

    SDL_LockMutex(opaque->wakeup_mutex);
    opaque->abort_request = 1;
    SDL_CondSignal(opaque->wakeup_cond);
    SDL_UnlockMutex(opaque->wakeup_mutex);

    SDL_WaitThread(opaque->audio_tid, ((void*)0));
    opaque->audio_tid = ((void*)0);

    if (opaque->slPlayItf)
        (*opaque->slPlayItf)->SetPlayState(opaque->slPlayItf, SL_PLAYSTATE_STOPPED);
    if (opaque->slBufferQueueItf)
        (*opaque->slBufferQueueItf)->Clear(opaque->slBufferQueueItf);

    if (opaque->slBufferQueueItf)
        opaque->slBufferQueueItf = ((void*)0);
    if (opaque->slVolumeItf)
        opaque->slVolumeItf = ((void*)0);
    if (opaque->slPlayItf)
        opaque->slPlayItf = ((void*)0);

    if (opaque->slPlayerObject) {
        (*opaque->slPlayerObject)->Destroy(opaque->slPlayerObject);
        opaque->slPlayerObject = ((void*)0);
    }

    freep((void **)&opaque->buffer);
}
