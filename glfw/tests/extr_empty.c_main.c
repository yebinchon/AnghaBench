
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thrd_t ;
typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ GLFW_FALSE ;
 int GL_COLOR_BUFFER_BIT ;
 int error_callback ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int glClear (int ) ;
 int glClearColor (float,float,float,float) ;
 int glViewport (int ,int ,int,int) ;
 int gladLoadGL (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwDestroyWindow (int *) ;
 int glfwGetFramebufferSize (int *,int*,int*) ;
 int glfwGetProcAddress ;
 int glfwHideWindow (int *) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSwapBuffers (int *) ;
 int glfwTerminate () ;
 int glfwWaitEvents () ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int key_callback ;
 float nrand () ;
 scalar_t__ running ;
 scalar_t__ sqrt (float) ;
 int srand (unsigned int) ;
 int stderr ;
 scalar_t__ thrd_create (int *,int ,int *) ;
 int thrd_join (int ,int*) ;
 scalar_t__ thrd_success ;
 int thread_main ;
 scalar_t__ time (int *) ;

int main(void)
{
    int result;
    thrd_t thread;
    GLFWwindow* window;

    srand((unsigned int) time(((void*)0)));

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    window = glfwCreateWindow(640, 480, "Empty Event Test", ((void*)0), ((void*)0));
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwMakeContextCurrent(window);
    gladLoadGL(glfwGetProcAddress);
    glfwSetKeyCallback(window, key_callback);

    if (thrd_create(&thread, thread_main, ((void*)0)) != thrd_success)
    {
        fprintf(stderr, "Failed to create secondary thread\n");

        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    while (running)
    {
        int width, height;
        float r = nrand(), g = nrand(), b = nrand();
        float l = (float) sqrt(r * r + g * g + b * b);

        glfwGetFramebufferSize(window, &width, &height);

        glViewport(0, 0, width, height);
        glClearColor(r / l, g / l, b / l, 1.f);
        glClear(GL_COLOR_BUFFER_BIT);
        glfwSwapBuffers(window);

        glfwWaitEvents();

        if (glfwWindowShouldClose(window))
            running = GLFW_FALSE;
    }

    glfwHideWindow(window);
    thrd_join(thread, &result);
    glfwDestroyWindow(window);

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
