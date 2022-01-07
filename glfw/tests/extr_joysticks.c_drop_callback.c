
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 long fread (char*,int,long,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int glfwUpdateGamepadMappings (char*) ;
 char* malloc (long) ;

__attribute__((used)) static void drop_callback(GLFWwindow* window, int count, const char* paths[])
{
    int i;

    for (i = 0; i < count; i++)
    {
        long size;
        char* text;
        FILE* stream = fopen(paths[i], "rb");
        if (!stream)
            continue;

        fseek(stream, 0, SEEK_END);
        size = ftell(stream);
        fseek(stream, 0, SEEK_SET);

        text = malloc(size + 1);
        text[size] = '\0';
        if (fread(text, 1, size, stream) == size)
            glfwUpdateGamepadMappings(text);

        free(text);
        fclose(stream);
    }
}
