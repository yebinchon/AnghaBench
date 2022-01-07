
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* plane_textures; int um3_color_conversion; int * us2_sampler; int program; } ;
typedef TYPE_1__ IJK_GLES2_Renderer ;
typedef int GLboolean ;


 int ALOGI (char*) ;
 int GL_CLAMP_TO_EDGE ;
 int GL_FALSE ;
 int GL_LINEAR ;
 scalar_t__ GL_TEXTURE0 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_TRUE ;
 int GL_UNPACK_ALIGNMENT ;
 int IJK_GLES2_checkError_TRACE (char*) ;
 int IJK_GLES2_getColorMatrix_bt709 () ;
 int glActiveTexture (scalar_t__) ;
 int glBindTexture (int ,scalar_t__) ;
 int glGenTextures (int,scalar_t__*) ;
 int glPixelStorei (int ,int) ;
 int glTexParameterf (int ,int ,int ) ;
 int glTexParameteri (int ,int ,int ) ;
 int glUniform1i (int ,int) ;
 int glUniformMatrix3fv (int ,int,int ,int ) ;
 int glUseProgram (int ) ;

__attribute__((used)) static GLboolean yuv420p_use(IJK_GLES2_Renderer *renderer)
{
    ALOGI("use render yuv420p\n");
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);

    glUseProgram(renderer->program); IJK_GLES2_checkError_TRACE("glUseProgram");

    if (0 == renderer->plane_textures[0])
        glGenTextures(3, renderer->plane_textures);

    for (int i = 0; i < 3; ++i) {
        glActiveTexture(GL_TEXTURE0 + i);
        glBindTexture(GL_TEXTURE_2D, renderer->plane_textures[i]);

        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
        glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

        glUniform1i(renderer->us2_sampler[i], i);
    }

    glUniformMatrix3fv(renderer->um3_color_conversion, 1, GL_FALSE, IJK_GLES2_getColorMatrix_bt709());

    return GL_TRUE;
}
