
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int * handle; } ;
struct TYPE_15__ {int * handle; } ;
struct TYPE_14__ {int * handle; } ;
struct TYPE_13__ {int * handle; } ;
struct TYPE_12__ {int * handle; } ;
struct TYPE_11__ {int * handle; } ;
struct TYPE_10__ {int * handle; } ;
struct TYPE_17__ {scalar_t__ helperWindowHandle; TYPE_7__ xi; TYPE_6__ vidmode; TYPE_5__ xrender; TYPE_4__ xinerama; TYPE_3__ randr; TYPE_2__ xcursor; TYPE_1__ x11xcb; int * display; int * im; int clipboardString; int primarySelectionString; scalar_t__ hiddenCursorHandle; int CLIPBOARD; } ;
struct TYPE_18__ {TYPE_8__ x11; } ;
typedef scalar_t__ Cursor ;


 scalar_t__ None ;
 int XCloseDisplay (int *) ;
 int XCloseIM (int *) ;
 int XDestroyWindow (int *,scalar_t__) ;
 int XFreeCursor (int *,scalar_t__) ;
 scalar_t__ XGetSelectionOwner (int *,int ) ;
 TYPE_9__ _glfw ;
 int _glfwPushSelectionToManagerX11 () ;
 int _glfwTerminateEGL () ;
 int _glfwTerminateGLX () ;
 int _glfwTerminateJoysticksLinux () ;
 int _glfw_dlclose (int *) ;
 int free (int ) ;

void _glfwPlatformTerminate(void)
{
    if (_glfw.x11.helperWindowHandle)
    {
        if (XGetSelectionOwner(_glfw.x11.display, _glfw.x11.CLIPBOARD) ==
            _glfw.x11.helperWindowHandle)
        {
            _glfwPushSelectionToManagerX11();
        }

        XDestroyWindow(_glfw.x11.display, _glfw.x11.helperWindowHandle);
        _glfw.x11.helperWindowHandle = None;
    }

    if (_glfw.x11.hiddenCursorHandle)
    {
        XFreeCursor(_glfw.x11.display, _glfw.x11.hiddenCursorHandle);
        _glfw.x11.hiddenCursorHandle = (Cursor) 0;
    }

    free(_glfw.x11.primarySelectionString);
    free(_glfw.x11.clipboardString);

    if (_glfw.x11.im)
    {
        XCloseIM(_glfw.x11.im);
        _glfw.x11.im = ((void*)0);
    }

    if (_glfw.x11.display)
    {
        XCloseDisplay(_glfw.x11.display);
        _glfw.x11.display = ((void*)0);
    }

    if (_glfw.x11.x11xcb.handle)
    {
        _glfw_dlclose(_glfw.x11.x11xcb.handle);
        _glfw.x11.x11xcb.handle = ((void*)0);
    }

    if (_glfw.x11.xcursor.handle)
    {
        _glfw_dlclose(_glfw.x11.xcursor.handle);
        _glfw.x11.xcursor.handle = ((void*)0);
    }

    if (_glfw.x11.randr.handle)
    {
        _glfw_dlclose(_glfw.x11.randr.handle);
        _glfw.x11.randr.handle = ((void*)0);
    }

    if (_glfw.x11.xinerama.handle)
    {
        _glfw_dlclose(_glfw.x11.xinerama.handle);
        _glfw.x11.xinerama.handle = ((void*)0);
    }

    if (_glfw.x11.xrender.handle)
    {
        _glfw_dlclose(_glfw.x11.xrender.handle);
        _glfw.x11.xrender.handle = ((void*)0);
    }

    if (_glfw.x11.vidmode.handle)
    {
        _glfw_dlclose(_glfw.x11.vidmode.handle);
        _glfw.x11.vidmode.handle = ((void*)0);
    }

    if (_glfw.x11.xi.handle)
    {
        _glfw_dlclose(_glfw.x11.xi.handle);
        _glfw.x11.xi.handle = ((void*)0);
    }



    _glfwTerminateEGL();
    _glfwTerminateGLX();


    _glfwTerminateJoysticksLinux();

}
