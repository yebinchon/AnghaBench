
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * jobject ;
struct TYPE_5__ {scalar_t__ opaque; } ;
struct TYPE_4__ {int * android_media_codec; } ;
typedef TYPE_1__ SDL_AMediaCodec_Opaque ;
typedef TYPE_2__ SDL_AMediaCodec ;
typedef int JNIEnv ;



jobject SDL_AMediaCodecJava_getObject(JNIEnv *env, const SDL_AMediaCodec *thiz)
{
    if (!thiz || !thiz->opaque)
        return ((void*)0);

    SDL_AMediaCodec_Opaque *opaque = (SDL_AMediaCodec_Opaque *)thiz->opaque;
    return opaque->android_media_codec;
}
