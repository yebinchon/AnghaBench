
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
typedef int jint ;
struct TYPE_6__ {int method_postEventFromNative; int id; } ;
struct TYPE_5__ {int (* CallStaticVoidMethod ) (TYPE_1__**,int ,int ,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer ;
 int stub1 (TYPE_1__**,int ,int ,int ,int ,int ,int ,int ) ;

void J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__postEventFromNative(JNIEnv *env, jobject weakThiz, jint what, jint arg1, jint arg2, jobject obj)
{
    (*env)->CallStaticVoidMethod(env, class_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer.id, class_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer.method_postEventFromNative, weakThiz, what, arg1, arg2, obj);
}
