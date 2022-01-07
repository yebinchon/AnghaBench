
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int jobject ;
typedef int JNIEnv ;


 int * J4AC_java_nio_ByteBuffer__getDirectBufferAddress__catchAll (int *,int ) ;
 int J4AC_java_nio_ByteBuffer__limit (int *,int ,size_t) ;
 int J4A_DeleteLocalRef__p (int *,int *) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;
 int memcpy (int *,void*,size_t) ;

int J4AC_java_nio_ByteBuffer__assignData__catchAll(JNIEnv *env, jobject thiz, void* data, size_t size)
{
    jobject buffer = J4AC_java_nio_ByteBuffer__limit(env, thiz, size);
    if (J4A_ExceptionCheck__catchAll(env) || !buffer)
        return -1;
    J4A_DeleteLocalRef__p(env, &buffer);

    uint8_t *c_buffer = J4AC_java_nio_ByteBuffer__getDirectBufferAddress__catchAll(env, thiz);
    if (!c_buffer)
        return -1;

    memcpy(c_buffer, data, size);
    return 0;
}
