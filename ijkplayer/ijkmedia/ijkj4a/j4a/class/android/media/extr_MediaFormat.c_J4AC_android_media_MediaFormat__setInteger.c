
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jstring ;
typedef int jobject ;
typedef int jint ;
struct TYPE_6__ {int method_setInteger; } ;
struct TYPE_5__ {int (* CallVoidMethod ) (TYPE_1__**,int ,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_android_media_MediaFormat ;
 int stub1 (TYPE_1__**,int ,int ,int ,int ) ;

void J4AC_android_media_MediaFormat__setInteger(JNIEnv *env, jobject thiz, jstring name, jint value)
{
    (*env)->CallVoidMethod(env, thiz, class_J4AC_android_media_MediaFormat.method_setInteger, name, value);
}
