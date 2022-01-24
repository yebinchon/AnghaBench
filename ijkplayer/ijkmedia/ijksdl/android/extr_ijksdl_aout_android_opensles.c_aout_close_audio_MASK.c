#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  (* SetPlayState ) (TYPE_5__**,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  (* Clear ) (TYPE_4__**) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  (* Destroy ) (TYPE_3__**) ;} ;
struct TYPE_8__ {TYPE_1__* opaque; } ;
struct TYPE_7__ {int abort_request; int /*<<< orphan*/  buffer; TYPE_3__** slPlayerObject; TYPE_5__** slPlayItf; int /*<<< orphan*/ * slVolumeItf; TYPE_4__** slBufferQueueItf; int /*<<< orphan*/ * audio_tid; int /*<<< orphan*/  wakeup_mutex; int /*<<< orphan*/  wakeup_cond; } ;
typedef  TYPE_1__ SDL_Aout_Opaque ;
typedef  TYPE_2__ SDL_Aout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SL_PLAYSTATE_STOPPED ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__**) ; 

__attribute__((used)) static void FUNC9(SDL_Aout *aout)
{
    FUNC0("aout_close_audio()\n");
    SDL_Aout_Opaque *opaque = aout->opaque;
    if (!opaque)
        return;

    FUNC2(opaque->wakeup_mutex);
    opaque->abort_request = true;
    FUNC1(opaque->wakeup_cond);
    FUNC3(opaque->wakeup_mutex);

    FUNC4(opaque->audio_tid, NULL);
    opaque->audio_tid = NULL;

    if (opaque->slPlayItf)
        (*opaque->slPlayItf)->SetPlayState(opaque->slPlayItf, SL_PLAYSTATE_STOPPED);
    if (opaque->slBufferQueueItf)
        (*opaque->slBufferQueueItf)->Clear(opaque->slBufferQueueItf);

    if (opaque->slBufferQueueItf)
        opaque->slBufferQueueItf = NULL;
    if (opaque->slVolumeItf)
        opaque->slVolumeItf      = NULL;
    if (opaque->slPlayItf)
        opaque->slPlayItf        = NULL;

    if (opaque->slPlayerObject) {
        (*opaque->slPlayerObject)->Destroy(opaque->slPlayerObject);
        opaque->slPlayerObject = NULL;
    }

    FUNC5((void **)&opaque->buffer);
}