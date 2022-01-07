
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * jstring ;
typedef int jint ;
typedef int jclass ;
struct TYPE_4__ {int * (* NewStringUTF ) (TYPE_1__**,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 char* SDL_AMediaCodec_getColorFormatName (int ) ;
 int * stub1 (TYPE_1__**,char const*) ;

__attribute__((used)) static jstring
IjkMediaPlayer_getColorFormatName(JNIEnv *env, jclass clazz, jint mediaCodecColorFormat)
{
    const char *codec_name = SDL_AMediaCodec_getColorFormatName(mediaCodecColorFormat);
    if (!codec_name)
        return ((void*)0) ;

    return (*env)->NewStringUTF(env, codec_name);
}
