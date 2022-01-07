
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refreshRate; int height; int width; } ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int GLFW_AUTO_ICONIFY ;
 int GLFW_DECORATED ;
 int GLFW_FLOATING ;
 int GLFW_MOD_ALT ;
 int GLFW_PRESS ;
 int GLFW_RESIZABLE ;
 int GLFW_TRUE ;
 int * glfwGetPrimaryMonitor () ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 int glfwGetWindowAttrib (int *,int ) ;
 int glfwGetWindowMonitor (int *) ;
 int glfwGetWindowPos (int *,int *,int *) ;
 int glfwGetWindowSize (int *,int *,int *) ;
 int glfwIconifyWindow (int *) ;
 int glfwMaximizeWindow (int *) ;
 int glfwRestoreWindow (int *) ;
 int glfwSetWindowAttrib (int *,int ,int) ;
 int glfwSetWindowMonitor (int *,int *,int ,int ,int ,int ,int ) ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int printf (char*,double,char*) ;
 int windowed_height ;
 int windowed_width ;
 int windowed_xpos ;
 int windowed_ypos ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    printf("%0.2f Key %s\n",
           glfwGetTime(),
           action == GLFW_PRESS ? "pressed" : "released");

    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 130:
            glfwIconifyWindow(window);
            break;
        case 129:
            glfwMaximizeWindow(window);
            break;
        case 128:
            glfwRestoreWindow(window);
            break;
        case 133:
            glfwSetWindowShouldClose(window, GLFW_TRUE);
            break;
        case 137:
            glfwSetWindowAttrib(window, GLFW_AUTO_ICONIFY, !glfwGetWindowAttrib(window, GLFW_AUTO_ICONIFY));
            break;
        case 136:
            glfwSetWindowAttrib(window, GLFW_RESIZABLE, !glfwGetWindowAttrib(window, GLFW_RESIZABLE));
            break;
        case 135:
            glfwSetWindowAttrib(window, GLFW_DECORATED, !glfwGetWindowAttrib(window, GLFW_DECORATED));
            break;
        case 132:
            glfwSetWindowAttrib(window, GLFW_FLOATING, !glfwGetWindowAttrib(window, GLFW_FLOATING));
            break;
        case 131:
        case 134:
        {
            if (mods != GLFW_MOD_ALT)
                return;

            if (glfwGetWindowMonitor(window))
            {
                glfwSetWindowMonitor(window, ((void*)0),
                                     windowed_xpos, windowed_ypos,
                                     windowed_width, windowed_height,
                                     0);
            }
            else
            {
                GLFWmonitor* monitor = glfwGetPrimaryMonitor();
                if (monitor)
                {
                    const GLFWvidmode* mode = glfwGetVideoMode(monitor);
                    glfwGetWindowPos(window, &windowed_xpos, &windowed_ypos);
                    glfwGetWindowSize(window, &windowed_width, &windowed_height);
                    glfwSetWindowMonitor(window, monitor,
                                         0, 0, mode->width, mode->height,
                                         mode->refreshRate);
                }
            }

            break;
        }
    }
}
