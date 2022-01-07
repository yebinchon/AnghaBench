
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
typedef int jint ;
struct TYPE_6__ {int field_flags; } ;
struct TYPE_5__ {int (* SetIntField ) (TYPE_1__**,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_android_media_MediaCodec__BufferInfo ;
 int stub1 (TYPE_1__**,int ,int ,int ) ;

void J4AC_android_media_MediaCodec__BufferInfo__flags__set(JNIEnv *env, jobject thiz, jint value)
{
    (*env)->SetIntField(env, thiz, class_J4AC_android_media_MediaCodec__BufferInfo.field_flags, value);
}
