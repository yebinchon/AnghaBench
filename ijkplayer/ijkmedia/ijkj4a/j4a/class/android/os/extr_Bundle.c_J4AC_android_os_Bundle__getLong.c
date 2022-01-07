
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jstring ;
typedef int jobject ;
typedef int jlong ;
struct TYPE_6__ {int method_getLong; } ;
struct TYPE_5__ {int (* CallLongMethod ) (TYPE_1__**,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_android_os_Bundle ;
 int stub1 (TYPE_1__**,int ,int ,int ) ;

jlong J4AC_android_os_Bundle__getLong(JNIEnv *env, jobject thiz, jstring key)
{
    return (*env)->CallLongMethod(env, thiz, class_J4AC_android_os_Bundle.method_getLong, key);
}
