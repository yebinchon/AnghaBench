
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jstring ;
typedef int jobject ;
struct TYPE_6__ {int method_setByteBuffer; } ;
struct TYPE_5__ {int (* CallVoidMethod ) (TYPE_1__**,int ,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_android_media_MediaFormat ;
 int stub1 (TYPE_1__**,int ,int ,int ,int ) ;

void J4AC_android_media_MediaFormat__setByteBuffer(JNIEnv *env, jobject thiz, jstring name, jobject bytes)
{
    (*env)->CallVoidMethod(env, thiz, class_J4AC_android_media_MediaFormat.method_setByteBuffer, name, bytes);
}
