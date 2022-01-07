
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
typedef int jint ;
struct TYPE_6__ {int constructor_AudioTrack; int id; } ;
struct TYPE_5__ {int (* NewObject ) (TYPE_1__**,int ,int ,int ,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_android_media_AudioTrack ;
 int stub1 (TYPE_1__**,int ,int ,int ,int ,int ,int ,int ,int ) ;

jobject J4AC_android_media_AudioTrack__AudioTrack(JNIEnv *env, jint streamType, jint sampleRateInHz, jint channelConfig, jint audioFormat, jint bufferSizeInBytes, jint mode)
{
    return (*env)->NewObject(env, class_J4AC_android_media_AudioTrack.id, class_J4AC_android_media_AudioTrack.constructor_AudioTrack, streamType, sampleRateInHz, channelConfig, audioFormat, bufferSizeInBytes, mode);
}
