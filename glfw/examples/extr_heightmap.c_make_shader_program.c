
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int GLuint ;
typedef int GLsizei ;
typedef scalar_t__ GLint ;


 int GL_FRAGMENT_SHADER ;
 int GL_LINK_STATUS ;
 scalar_t__ GL_TRUE ;
 int GL_VERTEX_SHADER ;
 int fprintf (int ,char*,...) ;
 int glAttachShader (unsigned int,unsigned int) ;
 unsigned int glCreateProgram () ;
 int glDeleteProgram (unsigned int) ;
 int glDeleteShader (unsigned int) ;
 int glGetProgramInfoLog (unsigned int,int,int *,char*) ;
 int glGetProgramiv (unsigned int,int ,scalar_t__*) ;
 int glLinkProgram (unsigned int) ;
 unsigned int make_shader (int ,char const*) ;
 int stderr ;

__attribute__((used)) static GLuint make_shader_program(const char* vs_text, const char* fs_text)
{
    GLuint program = 0u;
    GLint program_ok;
    GLuint vertex_shader = 0u;
    GLuint fragment_shader = 0u;
    GLsizei log_length;
    char info_log[8192];

    vertex_shader = make_shader(GL_VERTEX_SHADER, vs_text);
    if (vertex_shader != 0u)
    {
        fragment_shader = make_shader(GL_FRAGMENT_SHADER, fs_text);
        if (fragment_shader != 0u)
        {

            program = glCreateProgram();
            if (program != 0u)
            {

                glAttachShader(program, vertex_shader);
                glAttachShader(program, fragment_shader);
                glLinkProgram(program);
                glGetProgramiv(program, GL_LINK_STATUS, &program_ok);

                if (program_ok != GL_TRUE)
                {
                    fprintf(stderr, "ERROR, failed to link shader program\n");
                    glGetProgramInfoLog(program, 8192, &log_length, info_log);
                    fprintf(stderr, "ERROR: \n%s\n\n", info_log);
                    glDeleteProgram(program);
                    glDeleteShader(fragment_shader);
                    glDeleteShader(vertex_shader);
                    program = 0u;
                }
            }
        }
        else
        {
            fprintf(stderr, "ERROR: Unable to load fragment shader\n");
            glDeleteShader(vertex_shader);
        }
    }
    else
    {
        fprintf(stderr, "ERROR: Unable to load vertex shader\n");
    }
    return program;
}
