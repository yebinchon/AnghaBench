
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jint ;
typedef int jboolean ;
typedef int JNIEnv ;
typedef int IjkMediaPlayer ;


 int ALOGE (char*,char*,int ) ;
 int JNI_CHECK_GOTO (int *,int *,int *,char*,int ) ;
 int LABEL_RETURN ;
 int ijkmp_dec_ref_p (int **) ;
 int ijkmp_set_stream_selected (int *,int ,int ) ;
 int * jni_get_media_player (int *,int ) ;

__attribute__((used)) static void
ijkMediaPlayer_setStreamSelected(JNIEnv *env, jobject thiz, jint stream, jboolean selected)
{
    IjkMediaPlayer *mp = jni_get_media_player(env, thiz);
    int ret = 0;
    JNI_CHECK_GOTO(mp, env, ((void*)0), "mpjni: setStreamSelected: null mp", LABEL_RETURN);

    ret = ijkmp_set_stream_selected(mp, stream, selected);
    if (ret < 0) {
        ALOGE("failed to %s %d", selected ? "select" : "deselect", stream);
        goto LABEL_RETURN;
    }

LABEL_RETURN:
    ijkmp_dec_ref_p(&mp);
    return;
}
