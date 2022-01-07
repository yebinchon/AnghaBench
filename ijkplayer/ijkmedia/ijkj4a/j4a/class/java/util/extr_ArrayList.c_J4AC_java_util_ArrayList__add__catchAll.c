
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jboolean ;
typedef int JNIEnv ;


 int J4AC_java_util_ArrayList__add (int *,int ,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jboolean J4AC_java_util_ArrayList__add__catchAll(JNIEnv *env, jobject thiz, jobject object)
{
    jboolean ret_value = J4AC_java_util_ArrayList__add(env, thiz, object);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
