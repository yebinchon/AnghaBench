
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jstring ;
typedef int jobject ;
struct TYPE_6__ {int method_createByCodecName; int id; } ;
struct TYPE_5__ {int (* CallStaticObjectMethod ) (TYPE_1__**,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_android_media_MediaCodec ;
 int stub1 (TYPE_1__**,int ,int ,int ) ;

jobject J4AC_android_media_MediaCodec__createByCodecName(JNIEnv *env, jstring name)
{
    return (*env)->CallStaticObjectMethod(env, class_J4AC_android_media_MediaCodec.id, class_J4AC_android_media_MediaCodec.method_createByCodecName, name);
}
