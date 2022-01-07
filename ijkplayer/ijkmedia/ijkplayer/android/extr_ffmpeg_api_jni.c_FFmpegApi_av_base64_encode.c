
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int * jstring ;
typedef scalar_t__ jsize ;
typedef int jclass ;
typedef int jbyteArray ;
typedef int jbyte ;
struct TYPE_7__ {scalar_t__ (* GetArrayLength ) (TYPE_1__**,int ) ;int (* ReleaseByteArrayElements ) (TYPE_1__**,int ,int *,int ) ;int * (* NewStringUTF ) (TYPE_1__**,char*) ;int * (* GetByteArrayElements ) (TYPE_1__**,int ,int *) ;} ;
typedef TYPE_1__* JNIEnv ;


 int AV_BASE64_SIZE (scalar_t__) ;
 int JNI_ABORT ;
 int av_base64_encode (char*,int,int const*,scalar_t__) ;
 int free (char*) ;
 char* malloc (int) ;
 scalar_t__ stub1 (TYPE_1__**,int ) ;
 int * stub2 (TYPE_1__**,int ,int *) ;
 int * stub3 (TYPE_1__**,char*) ;
 int stub4 (TYPE_1__**,int ,int *,int ) ;

__attribute__((used)) static jstring
FFmpegApi_av_base64_encode(JNIEnv *env, jclass clazz, jbyteArray in)
{
    jstring ret_string = ((void*)0);
    char* out_buffer = 0;
    int out_size = 0;
    jbyte* in_buffer = 0;
    jsize in_size = (*env)->GetArrayLength(env, in);
    if (in_size <= 0)
        goto fail;

    in_buffer = (*env)->GetByteArrayElements(env, in, ((void*)0));
    if (!in_buffer)
        goto fail;

    out_size = AV_BASE64_SIZE(in_size);
    out_buffer = malloc(out_size + 1);
    if (!out_buffer)
        goto fail;
    out_buffer[out_size] = 0;

    if (!av_base64_encode(out_buffer, out_size, (const uint8_t *)in_buffer, in_size))
        goto fail;

    ret_string = (*env)->NewStringUTF(env, out_buffer);
fail:
    if (in_buffer) {
        (*env)->ReleaseByteArrayElements(env, in, in_buffer, JNI_ABORT);
        in_buffer = ((void*)0);
    }
    if (out_buffer) {
        free(out_buffer);
        out_buffer = ((void*)0);
    }
    return ret_string;
}
