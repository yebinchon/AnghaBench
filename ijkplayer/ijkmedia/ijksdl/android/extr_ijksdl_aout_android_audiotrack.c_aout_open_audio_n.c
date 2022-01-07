
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* opaque; } ;
struct TYPE_11__ {scalar_t__ channels; scalar_t__ format; } ;
struct TYPE_12__ {scalar_t__ buffer_size; int pause_on; int * atrack; int audio_tid; int _audio_tid; scalar_t__ abort_request; int audio_session_id; int buffer; TYPE_1__ spec; } ;
typedef TYPE_1__ SDL_AudioSpec ;
typedef TYPE_2__ SDL_Aout_Opaque ;
typedef TYPE_3__ SDL_Aout ;
typedef int JNIEnv ;


 int ALOGE (char*) ;
 int ALOGI (char*,int ) ;
 int SDLTRACE (char*,int,int) ;
 int SDL_Android_AudioTrack_free (int *,int *) ;
 int SDL_Android_AudioTrack_getAudioSessionId (int *,int *) ;
 scalar_t__ SDL_Android_AudioTrack_get_min_buffer_size (int *) ;
 int SDL_Android_AudioTrack_get_target_spec (int *,TYPE_1__*) ;
 int * SDL_Android_AudioTrack_new_from_sdl_spec (int *,TYPE_1__ const*) ;
 int SDL_CreateThreadEx (int *,int ,TYPE_3__*,char*) ;
 int aout_thread ;
 int assert (TYPE_1__ const*) ;
 int malloc (scalar_t__) ;

__attribute__((used)) static int aout_open_audio_n(JNIEnv *env, SDL_Aout *aout, const SDL_AudioSpec *desired, SDL_AudioSpec *obtained)
{
    assert(desired);
    SDL_Aout_Opaque *opaque = aout->opaque;

    opaque->spec = *desired;
    opaque->atrack = SDL_Android_AudioTrack_new_from_sdl_spec(env, desired);
    if (!opaque->atrack) {
        ALOGE("aout_open_audio_n: failed to new AudioTrcak()");
        return -1;
    }

    opaque->buffer_size = SDL_Android_AudioTrack_get_min_buffer_size(opaque->atrack);
    if (opaque->buffer_size <= 0) {
        ALOGE("aout_open_audio_n: failed to getMinBufferSize()");
        SDL_Android_AudioTrack_free(env, opaque->atrack);
        opaque->atrack = ((void*)0);
        return -1;
    }

    opaque->buffer = malloc(opaque->buffer_size);
    if (!opaque->buffer) {
        ALOGE("aout_open_audio_n: failed to allocate buffer");
        SDL_Android_AudioTrack_free(env, opaque->atrack);
        opaque->atrack = ((void*)0);
        return -1;
    }

    if (obtained) {
        SDL_Android_AudioTrack_get_target_spec(opaque->atrack, obtained);
        SDLTRACE("audio target format fmt:0x%x, channel:0x%x", (int)obtained->format, (int)obtained->channels);
    }

    opaque->audio_session_id = SDL_Android_AudioTrack_getAudioSessionId(env, opaque->atrack);
    ALOGI("audio_session_id = %d\n", opaque->audio_session_id);

    opaque->pause_on = 1;
    opaque->abort_request = 0;
    opaque->audio_tid = SDL_CreateThreadEx(&opaque->_audio_tid, aout_thread, aout, "ff_aout_android");
    if (!opaque->audio_tid) {
        ALOGE("aout_open_audio_n: failed to create audio thread");
        SDL_Android_AudioTrack_free(env, opaque->atrack);
        opaque->atrack = ((void*)0);
        return -1;
    }

    return 0;
}
