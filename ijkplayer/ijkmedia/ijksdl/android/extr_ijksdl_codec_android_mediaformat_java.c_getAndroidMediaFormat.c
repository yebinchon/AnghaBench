
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * jobject ;
struct TYPE_5__ {scalar_t__ opaque; } ;
struct TYPE_4__ {int * android_media_format; } ;
typedef TYPE_1__ SDL_AMediaFormat_Opaque ;
typedef TYPE_2__ SDL_AMediaFormat ;
typedef int JNIEnv ;



__attribute__((used)) static jobject getAndroidMediaFormat(JNIEnv *env, const SDL_AMediaFormat* thiz) {
    if (!thiz)
        return ((void*)0);

    SDL_AMediaFormat_Opaque *opaque = (SDL_AMediaFormat_Opaque *)thiz->opaque;
    if (!opaque)
        return ((void*)0);

    return opaque->android_media_format;
}
