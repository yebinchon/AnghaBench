
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * monitor; struct TYPE_9__* next; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int _GLFWmonitor ;
struct TYPE_8__ {int (* monitor ) (int *,int) ;} ;
struct TYPE_10__ {int monitorCount; TYPE_1__ callbacks; int ** monitors; TYPE_2__* windowListHead; } ;
typedef int GLFWmonitor ;


 int GLFW_CONNECTED ;
 int GLFW_DISCONNECTED ;
 int _GLFW_INSERT_FIRST ;
 TYPE_7__ _glfw ;
 int _glfwFreeMonitor (int *) ;
 int _glfwPlatformGetWindowFrameSize (TYPE_2__*,int*,int*,int *,int *) ;
 int _glfwPlatformGetWindowSize (TYPE_2__*,int*,int*) ;
 int _glfwPlatformSetWindowMonitor (TYPE_2__*,int *,int ,int ,int,int,int ) ;
 int _glfwPlatformSetWindowPos (TYPE_2__*,int,int) ;
 int memmove (int **,int **,size_t) ;
 int ** realloc (int **,int) ;
 int stub1 (int *,int) ;

void _glfwInputMonitor(_GLFWmonitor* monitor, int action, int placement)
{
    if (action == GLFW_CONNECTED)
    {
        _glfw.monitorCount++;
        _glfw.monitors =
            realloc(_glfw.monitors, sizeof(_GLFWmonitor*) * _glfw.monitorCount);

        if (placement == _GLFW_INSERT_FIRST)
        {
            memmove(_glfw.monitors + 1,
                    _glfw.monitors,
                    ((size_t) _glfw.monitorCount - 1) * sizeof(_GLFWmonitor*));
            _glfw.monitors[0] = monitor;
        }
        else
            _glfw.monitors[_glfw.monitorCount - 1] = monitor;
    }
    else if (action == GLFW_DISCONNECTED)
    {
        int i;
        _GLFWwindow* window;

        for (window = _glfw.windowListHead; window; window = window->next)
        {
            if (window->monitor == monitor)
            {
                int width, height, xoff, yoff;
                _glfwPlatformGetWindowSize(window, &width, &height);
                _glfwPlatformSetWindowMonitor(window, ((void*)0), 0, 0, width, height, 0);
                _glfwPlatformGetWindowFrameSize(window, &xoff, &yoff, ((void*)0), ((void*)0));
                _glfwPlatformSetWindowPos(window, xoff, yoff);
            }
        }

        for (i = 0; i < _glfw.monitorCount; i++)
        {
            if (_glfw.monitors[i] == monitor)
            {
                _glfw.monitorCount--;
                memmove(_glfw.monitors + i,
                        _glfw.monitors + i + 1,
                        ((size_t) _glfw.monitorCount - i) * sizeof(_GLFWmonitor*));
                break;
            }
        }
    }

    if (_glfw.callbacks.monitor)
        _glfw.callbacks.monitor((GLFWmonitor*) monitor, action);

    if (action == GLFW_DISCONNECTED)
        _glfwFreeMonitor(monitor);
}
