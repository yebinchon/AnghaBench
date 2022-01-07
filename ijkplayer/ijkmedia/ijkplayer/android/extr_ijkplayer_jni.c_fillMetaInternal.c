
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int JNIEnv ;
typedef int IjkMediaMeta ;


 int J4AC_Bundle__putString__withCString__catchAll (int *,int ,char const*,char const*) ;
 char* ijkmeta_get_string_l (int *,char const*) ;

__attribute__((used)) inline static void fillMetaInternal(JNIEnv *env, jobject jbundle, IjkMediaMeta *meta, const char *key, const char *default_value)
{
    const char *value = ijkmeta_get_string_l(meta, key);
    if (value == ((void*)0) )
        value = default_value;

    J4AC_Bundle__putString__withCString__catchAll(env, jbundle, key, value);
}
