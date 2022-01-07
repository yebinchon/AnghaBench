
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jstring ;
typedef int JNIEnv ;


 int J4A_ReleaseStringUTFChars (int *,int ,char const*) ;

void J4A_ReleaseStringUTFChars__p(JNIEnv *env, jstring str, const char **c_str)
{
    if (!str || !c_str)
        return;
    J4A_ReleaseStringUTFChars(env, str, *c_str);
    *c_str = ((void*)0);
}
