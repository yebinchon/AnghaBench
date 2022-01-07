
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int blueBits; int greenBits; int redBits; int refreshRate; } ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int EXIT_FAILURE ;
 int GLFW_BLUE_BITS ;
 int GLFW_GREEN_BITS ;
 int GLFW_RED_BITS ;
 int GLFW_REFRESH_RATE ;
 int exit (int ) ;
 int gladLoadGL (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwGetProcAddress ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 int glfwMakeContextCurrent (int *) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,int ) ;

__attribute__((used)) static GLFWwindow* create_window(GLFWmonitor* monitor)
{
    int width, height;
    GLFWwindow* window;

    if (monitor)
    {
        const GLFWvidmode* mode = glfwGetVideoMode(monitor);

        glfwWindowHint(GLFW_REFRESH_RATE, mode->refreshRate);
        glfwWindowHint(GLFW_RED_BITS, mode->redBits);
        glfwWindowHint(GLFW_GREEN_BITS, mode->greenBits);
        glfwWindowHint(GLFW_BLUE_BITS, mode->blueBits);

        width = mode->width;
        height = mode->height;
    }
    else
    {
        width = 640;
        height = 480;
    }

    window = glfwCreateWindow(width, height, "Iconify", monitor, ((void*)0));
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwMakeContextCurrent(window);
    gladLoadGL(glfwGetProcAddress);

    return window;
}
