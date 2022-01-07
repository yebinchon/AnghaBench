
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char GLubyte ;
typedef int GLint ;


 int GLFW_OPENGL_API ;
 int GL_EXTENSIONS ;
 int GL_NUM_EXTENSIONS ;
 char* get_api_name (int) ;
 int glGetIntegerv (int ,int*) ;
 char* glGetString (int ) ;
 scalar_t__ glGetStringi (int ,int) ;
 int printf (char*,char const*) ;
 int putchar (char const) ;

__attribute__((used)) static void list_context_extensions(int client, int major, int minor)
{
    printf("%s context extensions:\n", get_api_name(client));

    if (client == GLFW_OPENGL_API && major > 2)
    {
        GLint count;
        glGetIntegerv(GL_NUM_EXTENSIONS, &count);

        for (int i = 0; i < count; i++)
            printf(" %s\n", (const char*) glGetStringi(GL_EXTENSIONS, i));
    }
    else
    {
        const GLubyte* extensions = glGetString(GL_EXTENSIONS);
        while (*extensions != '\0')
        {
            putchar(' ');

            while (*extensions != '\0' && *extensions != ' ')
            {
                putchar(*extensions);
                extensions++;
            }

            while (*extensions == ' ')
                extensions++;

            putchar('\n');
        }
    }
}
