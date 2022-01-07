
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
typedef int jlong ;
struct TYPE_6__ {int field_mNativeMediaDataSource; } ;
struct TYPE_5__ {int (* GetLongField ) (TYPE_1__**,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer ;
 int stub1 (TYPE_1__**,int ,int ) ;

jlong J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__mNativeMediaDataSource__get(JNIEnv *env, jobject thiz)
{
    return (*env)->GetLongField(env, thiz, class_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer.field_mNativeMediaDataSource);
}
