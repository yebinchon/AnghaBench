
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refreshRate; int height; int width; } ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int GLFW_KEY_ENTER ;
 int GLFW_KEY_ESCAPE ;
 int GLFW_KEY_F11 ;
 int GLFW_MOD_ALT ;
 int GLFW_PRESS ;
 int GLFW_TRUE ;
 int * glfwGetPrimaryMonitor () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 scalar_t__ glfwGetWindowMonitor (int *) ;
 int glfwGetWindowPos (int *,int *,int *) ;
 int glfwGetWindowSize (int *,int *,int *) ;
 int glfwSetWindowMonitor (int *,int *,int ,int ,int ,int ,int ) ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int windowed_height ;
 int windowed_width ;
 int windowed_xpos ;
 int windowed_ypos ;

void key_callback( GLFWwindow* window, int key, int scancode, int action, int mods )
{
    if (action != GLFW_PRESS)
        return;

    if (key == GLFW_KEY_ESCAPE && mods == 0)
        glfwSetWindowShouldClose(window, GLFW_TRUE);
    if ((key == GLFW_KEY_ENTER && mods == GLFW_MOD_ALT) ||
        (key == GLFW_KEY_F11 && mods == GLFW_MOD_ALT))
    {
        if (glfwGetWindowMonitor(window))
        {
            glfwSetWindowMonitor(window, ((void*)0),
                                 windowed_xpos, windowed_ypos,
                                 windowed_width, windowed_height, 0);
        }
        else
        {
            GLFWmonitor* monitor = glfwGetPrimaryMonitor();
            if (monitor)
            {
                const GLFWvidmode* mode = glfwGetVideoMode(monitor);
                glfwGetWindowPos(window, &windowed_xpos, &windowed_ypos);
                glfwGetWindowSize(window, &windowed_width, &windowed_height);
                glfwSetWindowMonitor(window, monitor, 0, 0, mode->width, mode->height, mode->refreshRate);
            }
        }
    }
}
