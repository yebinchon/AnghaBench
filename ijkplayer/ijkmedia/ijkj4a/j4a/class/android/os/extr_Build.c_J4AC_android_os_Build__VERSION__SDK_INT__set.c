
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jint ;
struct TYPE_6__ {int field_SDK_INT; int id; } ;
struct TYPE_5__ {int (* SetStaticIntField ) (TYPE_1__**,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_android_os_Build__VERSION ;
 int stub1 (TYPE_1__**,int ,int ,int ) ;

void J4AC_android_os_Build__VERSION__SDK_INT__set(JNIEnv *env, jint value)
{
    (*env)->SetStaticIntField(env, class_J4AC_android_os_Build__VERSION.id, class_J4AC_android_os_Build__VERSION.field_SDK_INT, value);
}
