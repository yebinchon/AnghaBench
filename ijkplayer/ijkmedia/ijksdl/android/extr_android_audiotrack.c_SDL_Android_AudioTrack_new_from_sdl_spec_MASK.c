#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  buffer_size_in_bytes; int /*<<< orphan*/  audio_format; int /*<<< orphan*/  channel_config; int /*<<< orphan*/  sample_rate_in_hz; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  format; int /*<<< orphan*/  channels; int /*<<< orphan*/  freq; } ;
typedef  TYPE_1__ SDL_AudioSpec ;
typedef  TYPE_2__ SDL_Android_AudioTrack_Spec ;
typedef  int /*<<< orphan*/  SDL_Android_AudioTrack ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

SDL_Android_AudioTrack *FUNC4(JNIEnv *env, const SDL_AudioSpec *sdl_spec)
{
    SDL_Android_AudioTrack_Spec atrack_spec;

    FUNC0(&atrack_spec);
    atrack_spec.sample_rate_in_hz = sdl_spec->freq;
    atrack_spec.channel_config = FUNC2(sdl_spec->channels);
    atrack_spec.audio_format = FUNC3(sdl_spec->format);
    atrack_spec.buffer_size_in_bytes = sdl_spec->size;

    return FUNC1(env, &atrack_spec);
}