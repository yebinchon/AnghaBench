
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int func_uploadTexture; int func_getBufferWidth; int func_use; int program; int * us2_sampler; } ;
typedef TYPE_1__ IJK_GLES2_Renderer ;


 int ALOGI (char*) ;
 TYPE_1__* IJK_GLES2_Renderer_create_base (int ) ;
 int IJK_GLES2_Renderer_free (TYPE_1__*) ;
 int IJK_GLES2_checkError_TRACE (char*) ;
 int IJK_GLES2_getFragmentShader_rgb () ;
 int glGetUniformLocation (int ,char*) ;
 int rgb565_getBufferWidth ;
 int rgb565_uploadTexture ;
 int rgb_use ;

IJK_GLES2_Renderer *IJK_GLES2_Renderer_create_rgb565()
{
    ALOGI("create render rgb565\n");
    IJK_GLES2_Renderer *renderer = IJK_GLES2_Renderer_create_base(IJK_GLES2_getFragmentShader_rgb());
    if (!renderer)
        goto fail;

    renderer->us2_sampler[0] = glGetUniformLocation(renderer->program, "us2_SamplerX"); IJK_GLES2_checkError_TRACE("glGetUniformLocation(us2_SamplerX)");

    renderer->func_use = rgb_use;
    renderer->func_getBufferWidth = rgb565_getBufferWidth;
    renderer->func_uploadTexture = rgb565_uploadTexture;

    return renderer;
fail:
    IJK_GLES2_Renderer_free(renderer);
    return ((void*)0);
}
