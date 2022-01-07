
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ program; int um4_mvp; void* av2_texcoord; void* av4_position; void* fragment_shader; void* vertex_shader; } ;
typedef TYPE_1__ IJK_GLES2_Renderer ;
typedef int GLint ;


 int GL_FALSE ;
 int GL_FRAGMENT_SHADER ;
 int GL_LINK_STATUS ;
 int GL_VERTEX_SHADER ;
 int IJK_GLES2_Renderer_free (TYPE_1__*) ;
 int IJK_GLES2_checkError (char*) ;
 int IJK_GLES2_checkError_TRACE (char*) ;
 char const* IJK_GLES2_getVertexShader_default () ;
 void* IJK_GLES2_loadShader (int ,char const*) ;
 int IJK_GLES2_printProgramInfo (scalar_t__) ;
 int assert (char const*) ;
 scalar_t__ calloc (int,int) ;
 int glAttachShader (scalar_t__,void*) ;
 scalar_t__ glCreateProgram () ;
 void* glGetAttribLocation (scalar_t__,char*) ;
 int glGetProgramiv (scalar_t__,int ,int *) ;
 int glGetUniformLocation (scalar_t__,char*) ;
 int glLinkProgram (scalar_t__) ;

IJK_GLES2_Renderer *IJK_GLES2_Renderer_create_base(const char *fragment_shader_source)
{
    assert(fragment_shader_source);

    IJK_GLES2_Renderer *renderer = (IJK_GLES2_Renderer *)calloc(1, sizeof(IJK_GLES2_Renderer));
    if (!renderer)
        goto fail;

    renderer->vertex_shader = IJK_GLES2_loadShader(GL_VERTEX_SHADER, IJK_GLES2_getVertexShader_default());
    if (!renderer->vertex_shader)
        goto fail;

    renderer->fragment_shader = IJK_GLES2_loadShader(GL_FRAGMENT_SHADER, fragment_shader_source);
    if (!renderer->fragment_shader)
        goto fail;

    renderer->program = glCreateProgram(); IJK_GLES2_checkError("glCreateProgram");
    if (!renderer->program)
        goto fail;

    glAttachShader(renderer->program, renderer->vertex_shader); IJK_GLES2_checkError("glAttachShader(vertex)");
    glAttachShader(renderer->program, renderer->fragment_shader); IJK_GLES2_checkError("glAttachShader(fragment)");
    glLinkProgram(renderer->program); IJK_GLES2_checkError("glLinkProgram");
    GLint link_status = GL_FALSE;
    glGetProgramiv(renderer->program, GL_LINK_STATUS, &link_status);
    if (!link_status)
        goto fail;


    renderer->av4_position = glGetAttribLocation(renderer->program, "av4_Position"); IJK_GLES2_checkError_TRACE("glGetAttribLocation(av4_Position)");
    renderer->av2_texcoord = glGetAttribLocation(renderer->program, "av2_Texcoord"); IJK_GLES2_checkError_TRACE("glGetAttribLocation(av2_Texcoord)");
    renderer->um4_mvp = glGetUniformLocation(renderer->program, "um4_ModelViewProjection"); IJK_GLES2_checkError_TRACE("glGetUniformLocation(um4_ModelViewProjection)");

    return renderer;

fail:

    if (renderer && renderer->program)
        IJK_GLES2_printProgramInfo(renderer->program);

    IJK_GLES2_Renderer_free(renderer);
    return ((void*)0);
}
