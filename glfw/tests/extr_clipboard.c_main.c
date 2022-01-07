
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GL_COLOR_BUFFER_BIT ;
 int error_callback ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 int glClear (int ) ;
 int glClearColor (float,float,float,int ) ;
 int gladLoadGL (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwGetProcAddress ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWaitEvents () ;
 int glfwWindowShouldClose (int *) ;
 int key_callback ;
 int stderr ;
 int usage () ;

int main(int argc, char** argv)
{
    int ch;
    GLFWwindow* window;

    while ((ch = getopt(argc, argv, "h")) != -1)
    {
        switch (ch)
        {
            case 'h':
                usage();
                exit(EXIT_SUCCESS);

            default:
                usage();
                exit(EXIT_FAILURE);
        }
    }

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
    {
        fprintf(stderr, "Failed to initialize GLFW\n");
        exit(EXIT_FAILURE);
    }

    window = glfwCreateWindow(200, 200, "Clipboard Test", ((void*)0), ((void*)0));
    if (!window)
    {
        glfwTerminate();

        fprintf(stderr, "Failed to open GLFW window\n");
        exit(EXIT_FAILURE);
    }

    glfwMakeContextCurrent(window);
    gladLoadGL(glfwGetProcAddress);
    glfwSwapInterval(1);

    glfwSetKeyCallback(window, key_callback);

    glClearColor(0.5f, 0.5f, 0.5f, 0);

    while (!glfwWindowShouldClose(window))
    {
        glClear(GL_COLOR_BUFFER_BIT);

        glfwSwapBuffers(window);
        glfwWaitEvents();
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
