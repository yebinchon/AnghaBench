
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jlong ;
typedef int JNIEnv ;
typedef int IjkMediaPlayer ;


 int JNI_CHECK_GOTO (int *,int *,int *,char*,int ) ;
 int LABEL_RETURN ;
 int ijkmp_dec_ref_p (int **) ;
 int ijkmp_get_duration (int *) ;
 int * jni_get_media_player (int *,int ) ;

__attribute__((used)) static jlong
IjkMediaPlayer_getDuration(JNIEnv *env, jobject thiz)
{
    jlong retval = 0;
    IjkMediaPlayer *mp = jni_get_media_player(env, thiz);
    JNI_CHECK_GOTO(mp, env, ((void*)0), "mpjni: getDuration: null mp", LABEL_RETURN);

    retval = ijkmp_get_duration(mp);

LABEL_RETURN:
    ijkmp_dec_ref_p(&mp);
    return retval;
}
