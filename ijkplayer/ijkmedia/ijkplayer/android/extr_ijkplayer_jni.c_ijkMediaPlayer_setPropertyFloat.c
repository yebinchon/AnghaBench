
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jint ;
typedef int jfloat ;
typedef int JNIEnv ;
typedef int IjkMediaPlayer ;


 int JNI_CHECK_GOTO (int *,int *,int *,char*,int ) ;
 int LABEL_RETURN ;
 int ijkmp_dec_ref_p (int **) ;
 int ijkmp_set_property_float (int *,int ,int ) ;
 int * jni_get_media_player (int *,int ) ;

__attribute__((used)) static void
ijkMediaPlayer_setPropertyFloat(JNIEnv *env, jobject thiz, jint id, jfloat value)
{
    IjkMediaPlayer *mp = jni_get_media_player(env, thiz);
    JNI_CHECK_GOTO(mp, env, ((void*)0), "mpjni: setPropertyFloat: null mp", LABEL_RETURN);

    ijkmp_set_property_float(mp, id, value);

LABEL_RETURN:
    ijkmp_dec_ref_p(&mp);
    return;
}
