
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ redBits; scalar_t__ greenBits; scalar_t__ blueBits; scalar_t__ refreshRate; int width; scalar_t__ height; } ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int EXIT_SUCCESS ;
 int GLFW_BLUE_BITS ;
 int GLFW_GREEN_BITS ;
 int GLFW_RED_BITS ;
 int GLFW_REFRESH_RATE ;
 int GL_BLUE_BITS ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_GREEN_BITS ;
 int GL_RED_BITS ;
 int exit (int ) ;
 char* format_mode (TYPE_1__ const*) ;
 int framebuffer_size_callback ;
 int glClear (int ) ;
 int glGetIntegerv (int ,scalar_t__*) ;
 int gladLoadGL (int ) ;
 int * glfwCreateWindow (int,scalar_t__,char*,int ,int *) ;
 int glfwDestroyWindow (int *) ;
 char* glfwGetMonitorName (int *) ;
 int glfwGetPrimaryMonitor () ;
 int glfwGetProcAddress ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetVideoModes (int *,int*) ;
 int glfwGetWindowSize (int *,int*,scalar_t__*) ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetFramebufferSizeCallback (int *,int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetTime (double) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,scalar_t__) ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int key_callback ;
 int printf (char*,...) ;

__attribute__((used)) static void test_modes(GLFWmonitor* monitor)
{
    int i, count;
    GLFWwindow* window;
    const GLFWvidmode* modes = glfwGetVideoModes(monitor, &count);

    for (i = 0; i < count; i++)
    {
        const GLFWvidmode* mode = modes + i;
        GLFWvidmode current;

        glfwWindowHint(GLFW_RED_BITS, mode->redBits);
        glfwWindowHint(GLFW_GREEN_BITS, mode->greenBits);
        glfwWindowHint(GLFW_BLUE_BITS, mode->blueBits);
        glfwWindowHint(GLFW_REFRESH_RATE, mode->refreshRate);

        printf("Testing mode %u on monitor %s: %s\n",
               (unsigned int) i,
               glfwGetMonitorName(monitor),
               format_mode(mode));

        window = glfwCreateWindow(mode->width, mode->height,
                                  "Video Mode Test",
                                  glfwGetPrimaryMonitor(),
                                  ((void*)0));
        if (!window)
        {
            printf("Failed to enter mode %u: %s\n",
                   (unsigned int) i,
                   format_mode(mode));
            continue;
        }

        glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
        glfwSetKeyCallback(window, key_callback);

        glfwMakeContextCurrent(window);
        gladLoadGL(glfwGetProcAddress);
        glfwSwapInterval(1);

        glfwSetTime(0.0);

        while (glfwGetTime() < 5.0)
        {
            glClear(GL_COLOR_BUFFER_BIT);
            glfwSwapBuffers(window);
            glfwPollEvents();

            if (glfwWindowShouldClose(window))
            {
                printf("User terminated program\n");

                glfwTerminate();
                exit(EXIT_SUCCESS);
            }
        }

        glGetIntegerv(GL_RED_BITS, &current.redBits);
        glGetIntegerv(GL_GREEN_BITS, &current.greenBits);
        glGetIntegerv(GL_BLUE_BITS, &current.blueBits);

        glfwGetWindowSize(window, &current.width, &current.height);

        if (current.redBits != mode->redBits ||
            current.greenBits != mode->greenBits ||
            current.blueBits != mode->blueBits)
        {
            printf("*** Color bit mismatch: (%i %i %i) instead of (%i %i %i)\n",
                   current.redBits, current.greenBits, current.blueBits,
                   mode->redBits, mode->greenBits, mode->blueBits);
        }

        if (current.width != mode->width || current.height != mode->height)
        {
            printf("*** Size mismatch: %ix%i instead of %ix%i\n",
                   current.width, current.height,
                   mode->width, mode->height);
        }

        printf("Closing window\n");

        glfwDestroyWindow(window);
        window = ((void*)0);

        glfwPollEvents();
    }
}
