
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int clazz; } ;
struct TYPE_6__ {int (* RegisterNatives ) (TYPE_1__**,int ,int ,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 int IJK_FIND_JAVA_CLASS (TYPE_1__**,int ,int ) ;
 int JNI_CLASS_FFMPEG_API ;
 int NELEM (int ) ;
 TYPE_3__ g_clazz ;
 int g_methods ;
 int stub1 (TYPE_1__**,int ,int ,int ) ;

int FFmpegApi_global_init(JNIEnv *env)
{
    int ret = 0;

    IJK_FIND_JAVA_CLASS(env, g_clazz.clazz, JNI_CLASS_FFMPEG_API);
    (*env)->RegisterNatives(env, g_clazz.clazz, g_methods, NELEM(g_methods));

    return ret;
}
