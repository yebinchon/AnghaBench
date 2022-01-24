#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* opaque; } ;
struct TYPE_11__ {scalar_t__ channels; scalar_t__ format; } ;
struct TYPE_12__ {scalar_t__ buffer_size; int pause_on; int /*<<< orphan*/ * atrack; int /*<<< orphan*/  audio_tid; int /*<<< orphan*/  _audio_tid; scalar_t__ abort_request; int /*<<< orphan*/  audio_session_id; int /*<<< orphan*/  buffer; TYPE_1__ spec; } ;
typedef  TYPE_1__ SDL_AudioSpec ;
typedef  TYPE_2__ SDL_Aout_Opaque ;
typedef  TYPE_3__ SDL_Aout ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  aout_thread ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(JNIEnv *env, SDL_Aout *aout, const SDL_AudioSpec *desired, SDL_AudioSpec *obtained)
{
    FUNC9(desired);
    SDL_Aout_Opaque *opaque = aout->opaque;

    opaque->spec = *desired;
    opaque->atrack = FUNC7(env, desired);
    if (!opaque->atrack) {
        FUNC0("aout_open_audio_n: failed to new AudioTrcak()");
        return -1;
    }

    opaque->buffer_size = FUNC5(opaque->atrack);
    if (opaque->buffer_size <= 0) {
        FUNC0("aout_open_audio_n: failed to getMinBufferSize()");
        FUNC3(env, opaque->atrack);
        opaque->atrack = NULL;
        return -1;
    }

    opaque->buffer = FUNC10(opaque->buffer_size);
    if (!opaque->buffer) {
        FUNC0("aout_open_audio_n: failed to allocate buffer");
        FUNC3(env, opaque->atrack);
        opaque->atrack = NULL;
        return -1;
    }

    if (obtained) {
        FUNC6(opaque->atrack, obtained);
        FUNC2("audio target format fmt:0x%x, channel:0x%x", (int)obtained->format, (int)obtained->channels);
    }

    opaque->audio_session_id = FUNC4(env, opaque->atrack);
    FUNC1("audio_session_id = %d\n", opaque->audio_session_id);

    opaque->pause_on = 1;
    opaque->abort_request = 0;
    opaque->audio_tid = FUNC8(&opaque->_audio_tid, aout_thread, aout, "ff_aout_android");
    if (!opaque->audio_tid) {
        FUNC0("aout_open_audio_n: failed to create audio thread");
        FUNC3(env, opaque->atrack);
        opaque->atrack = NULL;
        return -1;
    }

    return 0;
}