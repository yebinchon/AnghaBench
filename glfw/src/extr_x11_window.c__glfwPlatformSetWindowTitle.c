
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int handle; } ;
struct TYPE_8__ {TYPE_1__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {int display; int UTF8_STRING; int NET_WM_ICON_NAME; int NET_WM_NAME; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;


 int PropModeReplace ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,int ) ;
 int XFlush (int ) ;
 int XmbSetWMProperties (int ,int ,char const*,char const*,int *,int ,int *,int *,int *) ;
 int Xutf8SetWMProperties (int ,int ,char const*,char const*,int *,int ,int *,int *,int *) ;
 TYPE_5__ _glfw ;
 int strlen (char const*) ;

void _glfwPlatformSetWindowTitle(_GLFWwindow* window, const char* title)
{
    XmbSetWMProperties(_glfw.x11.display,
                       window->x11.handle,
                       title, title,
                       ((void*)0), 0,
                       ((void*)0), ((void*)0), ((void*)0));


    XChangeProperty(_glfw.x11.display, window->x11.handle,
                    _glfw.x11.NET_WM_NAME, _glfw.x11.UTF8_STRING, 8,
                    PropModeReplace,
                    (unsigned char*) title, strlen(title));

    XChangeProperty(_glfw.x11.display, window->x11.handle,
                    _glfw.x11.NET_WM_ICON_NAME, _glfw.x11.UTF8_STRING, 8,
                    PropModeReplace,
                    (unsigned char*) title, strlen(title));

    XFlush(_glfw.x11.display);
}
