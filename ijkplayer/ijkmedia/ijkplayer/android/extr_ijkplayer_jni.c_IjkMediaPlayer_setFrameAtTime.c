
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef char const* jstring ;
typedef int jobject ;
typedef int jlong ;
typedef int jint ;
struct TYPE_7__ {char* (* GetStringUTFChars ) (TYPE_1__**,char const*,int *) ;int (* ReleaseStringUTFChars ) (TYPE_1__**,char const*,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef char const IjkMediaPlayer ;


 int ALOGV (char*,char const*) ;
 int JNI_CHECK_GOTO (char const*,TYPE_1__**,char*,char*,int ) ;
 int LABEL_RETURN ;
 int ijkmp_dec_ref_p (char const**) ;
 int ijkmp_set_frame_at_time (char const*,char const*,int ,int ,int ,int ) ;
 char* jni_get_media_player (TYPE_1__**,int ) ;
 char* stub1 (TYPE_1__**,char const*,int *) ;
 int stub2 (TYPE_1__**,char const*,char const*) ;

__attribute__((used)) static void
IjkMediaPlayer_setFrameAtTime(JNIEnv *env, jobject thiz, jstring path, jlong start_time, jlong end_time, jint num, jint definition) {
    IjkMediaPlayer *mp = jni_get_media_player(env, thiz);
    const char *c_path = ((void*)0);
    JNI_CHECK_GOTO(path, env, "java/lang/IllegalArgumentException", "mpjni: setFrameAtTime: null path", LABEL_RETURN);
    JNI_CHECK_GOTO(mp, env, "java/lang/IllegalStateException", "mpjni: setFrameAtTime: null mp", LABEL_RETURN);

    c_path = (*env)->GetStringUTFChars(env, path, ((void*)0) );
    JNI_CHECK_GOTO(c_path, env, "java/lang/OutOfMemoryError", "mpjni: setFrameAtTime: path.string oom", LABEL_RETURN);

    ALOGV("setFrameAtTime: path %s", c_path);
    ijkmp_set_frame_at_time(mp, c_path, start_time, end_time, num, definition);
    (*env)->ReleaseStringUTFChars(env, path, c_path);

LABEL_RETURN:
    ijkmp_dec_ref_p(&mp);
    return;
}
