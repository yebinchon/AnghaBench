
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
struct TYPE_6__ {int constructor_Bundle; int id; } ;
struct TYPE_5__ {int (* NewObject ) (TYPE_1__**,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_android_os_Bundle ;
 int stub1 (TYPE_1__**,int ,int ) ;

jobject J4AC_android_os_Bundle__Bundle(JNIEnv *env)
{
    return (*env)->NewObject(env, class_J4AC_android_os_Bundle.id, class_J4AC_android_os_Bundle.constructor_Bundle);
}
