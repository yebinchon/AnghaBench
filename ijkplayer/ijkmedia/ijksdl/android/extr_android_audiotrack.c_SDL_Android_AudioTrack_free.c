
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ thiz; scalar_t__ byte_buffer_capacity; scalar_t__ byte_buffer; } ;
typedef TYPE_1__ SDL_Android_AudioTrack ;
typedef int JNIEnv ;


 int J4AC_AudioTrack__release (int *,scalar_t__) ;
 int J4A_DeleteGlobalRef__p (int *,scalar_t__*) ;
 int free (TYPE_1__*) ;

void SDL_Android_AudioTrack_free(JNIEnv *env, SDL_Android_AudioTrack* atrack)
{
    J4A_DeleteGlobalRef__p(env, &atrack->byte_buffer);
    atrack->byte_buffer_capacity = 0;

    if (atrack->thiz) {
        J4AC_AudioTrack__release(env, atrack->thiz);
        J4A_DeleteGlobalRef__p(env, &atrack->thiz);
    }

    free(atrack);
}
