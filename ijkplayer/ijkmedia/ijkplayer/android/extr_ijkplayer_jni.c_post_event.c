
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int JNIEnv ;


 int J4AC_IjkMediaPlayer__postEventFromNative (int *,int ,int,int,int,int *) ;

__attribute__((used)) inline static void post_event(JNIEnv *env, jobject weak_this, int what, int arg1, int arg2)
{

    J4AC_IjkMediaPlayer__postEventFromNative(env, weak_this, what, arg1, arg2, ((void*)0));

}
