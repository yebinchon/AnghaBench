
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jboolean ;
typedef int JNIEnv ;
typedef int IjkMediaPlayer ;


 int JNI_CHECK_GOTO (int *,int *,int *,char*,int ) ;
 int JNI_FALSE ;
 int JNI_TRUE ;
 int LABEL_RETURN ;
 int ijkmp_dec_ref_p (int **) ;
 scalar_t__ ijkmp_is_playing (int *) ;
 int * jni_get_media_player (int *,int ) ;

__attribute__((used)) static jboolean
IjkMediaPlayer_isPlaying(JNIEnv *env, jobject thiz)
{
    jboolean retval = JNI_FALSE;
    IjkMediaPlayer *mp = jni_get_media_player(env, thiz);
    JNI_CHECK_GOTO(mp, env, ((void*)0), "mpjni: isPlaying: null mp", LABEL_RETURN);

    retval = ijkmp_is_playing(mp) ? JNI_TRUE : JNI_FALSE;

LABEL_RETURN:
    ijkmp_dec_ref_p(&mp);
    return retval;
}
