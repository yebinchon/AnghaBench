
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
typedef int jlong ;
struct TYPE_6__ {int field_mNativeMediaPlayer; } ;
struct TYPE_5__ {int (* SetLongField ) (TYPE_1__**,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 TYPE_3__ class_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer ;
 int stub1 (TYPE_1__**,int ,int ,int ) ;

void J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__mNativeMediaPlayer__set(JNIEnv *env, jobject thiz, jlong value)
{
    (*env)->SetLongField(env, thiz, class_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer.field_mNativeMediaPlayer, value);
}
