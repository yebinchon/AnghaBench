
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int handle; } ;
struct TYPE_10__ {TYPE_1__ x11; int decorated; scalar_t__ monitor; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef int XPointer ;
typedef int XEvent ;
struct TYPE_9__ {scalar_t__ NET_FRAME_EXTENTS; int display; scalar_t__ NET_REQUEST_FRAME_EXTENTS; } ;
struct TYPE_11__ {TYPE_2__ x11; } ;


 int GLFW_PLATFORM_ERROR ;
 scalar_t__ None ;
 int XA_CARDINAL ;
 int XCheckIfEvent (int ,int *,int ,int ) ;
 int XFree (long*) ;
 TYPE_7__ _glfw ;
 int _glfwGetWindowPropertyX11 (int ,scalar_t__,int ,unsigned char**) ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformWindowVisible (TYPE_3__*) ;
 int isFrameExtentsEvent ;
 int sendEventToWM (TYPE_3__*,scalar_t__,int ,int ,int ,int ,int ) ;
 int waitForEvent (double*) ;

void _glfwPlatformGetWindowFrameSize(_GLFWwindow* window,
                                     int* left, int* top,
                                     int* right, int* bottom)
{
    long* extents = ((void*)0);

    if (window->monitor || !window->decorated)
        return;

    if (_glfw.x11.NET_FRAME_EXTENTS == None)
        return;

    if (!_glfwPlatformWindowVisible(window) &&
        _glfw.x11.NET_REQUEST_FRAME_EXTENTS)
    {
        XEvent event;
        double timeout = 0.5;



        sendEventToWM(window, _glfw.x11.NET_REQUEST_FRAME_EXTENTS,
                      0, 0, 0, 0, 0);






        while (!XCheckIfEvent(_glfw.x11.display,
                              &event,
                              isFrameExtentsEvent,
                              (XPointer) window))
        {
            if (!waitForEvent(&timeout))
            {
                _glfwInputError(GLFW_PLATFORM_ERROR,
                                "X11: The window manager has a broken _NET_REQUEST_FRAME_EXTENTS implementation; please report this issue");
                return;
            }
        }
    }

    if (_glfwGetWindowPropertyX11(window->x11.handle,
                                  _glfw.x11.NET_FRAME_EXTENTS,
                                  XA_CARDINAL,
                                  (unsigned char**) &extents) == 4)
    {
        if (left)
            *left = extents[0];
        if (top)
            *top = extents[2];
        if (right)
            *right = extents[1];
        if (bottom)
            *bottom = extents[3];
    }

    if (extents)
        XFree(extents);
}
