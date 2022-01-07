
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLuint ;
typedef scalar_t__ GLint ;
typedef int GLenum ;


 int GL_COMPILE_STATUS ;
 int IJK_GLES2_checkError (char*) ;
 int IJK_GLES2_checkError_TRACE (char*) ;
 int IJK_GLES2_printShaderInfo (scalar_t__) ;
 int assert (char const*) ;
 int glCompileShader (scalar_t__) ;
 scalar_t__ glCreateShader (int ) ;
 int glDeleteShader (scalar_t__) ;
 int glGetShaderiv (scalar_t__,int ,scalar_t__*) ;
 int glShaderSource (scalar_t__,int,char const**,int *) ;

GLuint IJK_GLES2_loadShader(GLenum shader_type, const char *shader_source)
{
    assert(shader_source);

    GLuint shader = glCreateShader(shader_type); IJK_GLES2_checkError("glCreateShader");
    if (!shader)
        return 0;

    assert(shader_source);

    glShaderSource(shader, 1, &shader_source, ((void*)0)); IJK_GLES2_checkError_TRACE("glShaderSource");
    glCompileShader(shader); IJK_GLES2_checkError_TRACE("glCompileShader");

    GLint compile_status = 0;
    glGetShaderiv(shader, GL_COMPILE_STATUS, &compile_status);
    if (!compile_status)
        goto fail;

    return shader;

fail:

    if (shader) {
        IJK_GLES2_printShaderInfo(shader);
        glDeleteShader(shader);
    }

    return 0;
}
