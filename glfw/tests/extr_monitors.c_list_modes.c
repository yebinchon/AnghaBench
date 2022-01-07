
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float width; int height; } ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 char* format_mode (TYPE_1__ const*) ;
 int glfwGetMonitorContentScale (int *,float*,float*) ;
 char* glfwGetMonitorName (int *) ;
 int glfwGetMonitorPhysicalSize (int *,int*,int*) ;
 int glfwGetMonitorPos (int *,int*,int*) ;
 int glfwGetMonitorWorkarea (int *,int*,int*,int*,int*) ;
 int * glfwGetPrimaryMonitor () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 TYPE_1__* glfwGetVideoModes (int *,int*) ;
 scalar_t__ memcmp (TYPE_1__ const*,TYPE_1__ const*,int) ;
 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void list_modes(GLFWmonitor* monitor)
{
    int count, x, y, width_mm, height_mm, i;
    int workarea_x, workarea_y, workarea_width, workarea_height;
    float xscale, yscale;

    const GLFWvidmode* mode = glfwGetVideoMode(monitor);
    const GLFWvidmode* modes = glfwGetVideoModes(monitor, &count);

    glfwGetMonitorPos(monitor, &x, &y);
    glfwGetMonitorPhysicalSize(monitor, &width_mm, &height_mm);
    glfwGetMonitorContentScale(monitor, &xscale, &yscale);
    glfwGetMonitorWorkarea(monitor, &workarea_x, &workarea_y, &workarea_width, &workarea_height);

    printf("Name: %s (%s)\n",
           glfwGetMonitorName(monitor),
           glfwGetPrimaryMonitor() == monitor ? "primary" : "secondary");
    printf("Current mode: %s\n", format_mode(mode));
    printf("Virtual position: %i, %i\n", x, y);
    printf("Content scale: %f x %f\n", xscale, yscale);

    printf("Physical size: %i x %i mm (%0.2f dpi at %i x %i)\n",
           width_mm, height_mm, mode->width * 25.4f / width_mm, mode->width, mode->height);
    printf("Monitor work area: %i x %i starting at %i, %i\n",
            workarea_width, workarea_height, workarea_x, workarea_y);

    printf("Modes:\n");

    for (i = 0; i < count; i++)
    {
        printf("%3u: %s", (unsigned int) i, format_mode(modes + i));

        if (memcmp(mode, modes + i, sizeof(GLFWvidmode)) == 0)
            printf(" (current mode)");

        putchar('\n');
    }
}
