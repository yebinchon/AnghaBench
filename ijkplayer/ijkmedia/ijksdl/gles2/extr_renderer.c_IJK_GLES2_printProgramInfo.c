
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf_stack ;
typedef int GLuint ;
typedef int GLsizei ;
typedef int GLint ;


 int ALOGE (char*,...) ;
 int GL_INFO_LOG_LENGTH ;
 int free (char*) ;
 int glGetProgramInfoLog (int ,int,int *,char*) ;
 int glGetProgramiv (int ,int ,int*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static void IJK_GLES2_printProgramInfo(GLuint program)
{
    if (!program)
        return;

    GLint info_len = 0;
    glGetProgramiv(program, GL_INFO_LOG_LENGTH, &info_len);
    if (!info_len) {
        ALOGE("[GLES2][Program] empty info\n");
        return;
    }

    char buf_stack[32];
    char *buf_heap = ((void*)0);
    char *buf = buf_stack;
    GLsizei buf_len = sizeof(buf_stack) - 1;
    if (info_len > sizeof(buf_stack)) {
        buf_heap = (char*) malloc(info_len + 1);
        if (buf_heap) {
            buf = buf_heap;
            buf_len = info_len;
        }
    }

    glGetProgramInfoLog(program, buf_len, ((void*)0), buf);
    ALOGE("[GLES2][Program] error %s\n", buf);

    if (buf_heap)
        free(buf_heap);
}
