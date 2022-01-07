
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; } ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int GLFW_CONNECTED ;
 int GLFW_DISCONNECTED ;
 int counter ;
 char* glfwGetMonitorName (int *) ;
 int glfwGetMonitorPhysicalSize (int *,int*,int*) ;
 int glfwGetMonitorPos (int *,int*,int*) ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 int printf (char*,int ,double,char*,...) ;

__attribute__((used)) static void monitor_callback(GLFWmonitor* monitor, int event)
{
    if (event == GLFW_CONNECTED)
    {
        int x, y, widthMM, heightMM;
        const GLFWvidmode* mode = glfwGetVideoMode(monitor);

        glfwGetMonitorPos(monitor, &x, &y);
        glfwGetMonitorPhysicalSize(monitor, &widthMM, &heightMM);

        printf("%08x at %0.3f: Monitor %s (%ix%i at %ix%i, %ix%i mm) was connected\n",
               counter++,
               glfwGetTime(),
               glfwGetMonitorName(monitor),
               mode->width, mode->height,
               x, y,
               widthMM, heightMM);
    }
    else if (event == GLFW_DISCONNECTED)
    {
        printf("%08x at %0.3f: Monitor %s was disconnected\n",
               counter++,
               glfwGetTime(),
               glfwGetMonitorName(monitor));
    }
}
