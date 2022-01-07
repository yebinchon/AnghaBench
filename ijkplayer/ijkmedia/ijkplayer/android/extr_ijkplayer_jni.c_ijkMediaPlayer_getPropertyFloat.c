
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
 int ijkmp_get_property_float (int *,int ,int ) ;
 int * jni_get_media_player (int *,int ) ;

__attribute__((used)) static jfloat
ijkMediaPlayer_getPropertyFloat(JNIEnv *env, jobject thiz, jint id, jfloat default_value)
{
    jfloat value = default_value;
    IjkMediaPlayer *mp = jni_get_media_player(env, thiz);
    JNI_CHECK_GOTO(mp, env, ((void*)0), "mpjni: getPropertyFloat: null mp", LABEL_RETURN);

    value = ijkmp_get_property_float(mp, id, default_value);

LABEL_RETURN:
    ijkmp_dec_ref_p(&mp);
    return value;
}
