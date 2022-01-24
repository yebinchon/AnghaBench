#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {TYPE_2__* opaque; } ;
struct TYPE_5__ {void* userdata; int /*<<< orphan*/  (* callback ) (void*,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_6__ {int need_flush; int /*<<< orphan*/  wakeup_mutex; int /*<<< orphan*/  speed; scalar_t__ speed_changed; int /*<<< orphan*/  right_volume; int /*<<< orphan*/  left_volume; scalar_t__ need_set_volume; scalar_t__ pause_on; int /*<<< orphan*/  abort_request; int /*<<< orphan*/  wakeup_cond; int /*<<< orphan*/ * buffer; TYPE_1__ spec; int /*<<< orphan*/ * atrack; } ;
typedef  int /*<<< orphan*/  (* SDL_AudioCallback ) (void*,int /*<<< orphan*/ *,int) ;
typedef  TYPE_2__ SDL_Aout_Opaque ;
typedef  TYPE_3__ SDL_Aout ;
typedef  int /*<<< orphan*/  SDL_Android_AudioTrack ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_THREAD_PRIORITY_HIGH ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(JNIEnv *env, SDL_Aout *aout)
{
    SDL_Aout_Opaque *opaque = aout->opaque;
    SDL_Android_AudioTrack *atrack = opaque->atrack;
    SDL_AudioCallback audio_cblk = opaque->spec.callback;
    void *userdata = opaque->spec.userdata;
    uint8_t *buffer = opaque->buffer;
    int copy_size = 256;

    FUNC12(atrack);
    FUNC12(buffer);

    FUNC10(SDL_THREAD_PRIORITY_HIGH);

    if (!opaque->abort_request && !opaque->pause_on)
        FUNC4(env, atrack);

    while (!opaque->abort_request) {
        FUNC9(opaque->wakeup_mutex);
        if (!opaque->abort_request && opaque->pause_on) {
            FUNC3(env, atrack);
            while (!opaque->abort_request && opaque->pause_on) {
                FUNC8(opaque->wakeup_cond, opaque->wakeup_mutex, 1000);
            }
            if (!opaque->abort_request && !opaque->pause_on) {
                if (opaque->need_flush) {
                    opaque->need_flush = 0;
                    FUNC1(env, atrack);
                }
                FUNC4(env, atrack);
            }
        }
        if (opaque->need_flush) {
            opaque->need_flush = 0;
            FUNC1(env, atrack);
        }
        if (opaque->need_set_volume) {
            opaque->need_set_volume = 0;
            FUNC6(env, atrack, opaque->left_volume, opaque->right_volume);
        }
        if (opaque->speed_changed) {
            opaque->speed_changed = 0;
            FUNC5(env, atrack, opaque->speed);
        }
        FUNC11(opaque->wakeup_mutex);

        audio_cblk(userdata, buffer, copy_size);
        if (opaque->need_flush) {
            FUNC1(env, atrack);
            opaque->need_flush = false;
        }

        if (opaque->need_flush) {
            opaque->need_flush = 0;
            FUNC1(env, atrack);
        } else {
            int written = FUNC7(env, atrack, buffer, copy_size);
            if (written != copy_size) {
                FUNC0("AudioTrack: not all data copied %d/%d", (int)written, (int)copy_size);
            }
        }

        // TODO: 1 if callback return -1 or 0
    }

    FUNC2(env, atrack);
    return 0;
}