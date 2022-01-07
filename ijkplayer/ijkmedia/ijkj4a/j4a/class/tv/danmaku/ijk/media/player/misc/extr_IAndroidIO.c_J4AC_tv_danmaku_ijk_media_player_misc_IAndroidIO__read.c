
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
typedef int jint ;
typedef int jbyteArray ;
struct TYPE_6__ {int method_read; } ;
struct TYPE_5__ {int (* CallIntMethod ) (TYPE_1__**,int ,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO ;
 int stub1 (TYPE_1__**,int ,int ,int ,int ) ;

jint J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO__read(JNIEnv *env, jobject thiz, jbyteArray buffer, jint size)
{
    return (*env)->CallIntMethod(env, thiz, class_J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO.method_read, buffer, size);
}
