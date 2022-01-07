
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int refreshRate; } ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;







 int GLFW_MOD_ALT ;
 int GLFW_PRESS ;
 int * glfwGetPrimaryMonitor () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 int glfwGetWindowMonitor (int *) ;
 int glfwGetWindowPos (int *,int*,int*) ;
 int glfwGetWindowSize (int *,int*,int*) ;
 int glfwSetWindowMonitor (int *,int *,int,int,int,int,int ) ;
 int glfwSetWindowShouldClose (int *,int) ;
 int set_swap_interval (int *,int ) ;
 int swap_interval ;
 int swap_tear ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 128:
        {
            if (swap_interval + 1 > swap_interval)
                set_swap_interval(window, swap_interval + 1);
            break;
        }

        case 132:
        {
            if (swap_tear)
            {
                if (swap_interval - 1 < swap_interval)
                    set_swap_interval(window, swap_interval - 1);
            }
            else
            {
                if (swap_interval - 1 >= 0)
                    set_swap_interval(window, swap_interval - 1);
            }
            break;
        }

        case 130:
            glfwSetWindowShouldClose(window, 1);
            break;

        case 129:
        case 131:
        {
            static int x, y, width, height;

            if (mods != GLFW_MOD_ALT)
                return;

            if (glfwGetWindowMonitor(window))
                glfwSetWindowMonitor(window, ((void*)0), x, y, width, height, 0);
            else
            {
                GLFWmonitor* monitor = glfwGetPrimaryMonitor();
                const GLFWvidmode* mode = glfwGetVideoMode(monitor);
                glfwGetWindowPos(window, &x, &y);
                glfwGetWindowSize(window, &width, &height);
                glfwSetWindowMonitor(window, monitor,
                                     0, 0, mode->width, mode->height,
                                     mode->refreshRate);
            }

            break;
        }
    }
}
