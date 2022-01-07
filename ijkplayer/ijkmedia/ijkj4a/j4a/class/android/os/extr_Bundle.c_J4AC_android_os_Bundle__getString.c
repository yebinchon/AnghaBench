
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jstring ;
typedef int jobject ;
struct TYPE_6__ {int method_getString; } ;
struct TYPE_5__ {int (* CallObjectMethod ) (TYPE_1__**,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_android_os_Bundle ;
 int stub1 (TYPE_1__**,int ,int ,int ) ;

jstring J4AC_android_os_Bundle__getString(JNIEnv *env, jobject thiz, jstring key)
{
    return (*env)->CallObjectMethod(env, thiz, class_J4AC_android_os_Bundle.method_getString, key);
}
