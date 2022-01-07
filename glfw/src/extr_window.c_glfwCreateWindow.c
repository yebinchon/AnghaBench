
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


struct TYPE_22__ {int width; int height; char const* title; scalar_t__ focused; scalar_t__ visible; scalar_t__ centerCursor; int focusOnShow; int floating; int autoIconify; int decorated; int resizable; } ;
typedef TYPE_3__ _GLFWwndconfig ;
struct TYPE_20__ {int width; int height; int refreshRate; int blueBits; int greenBits; int redBits; } ;
struct TYPE_23__ {int * monitor; void* denom; void* numer; void* maxheight; void* maxwidth; void* minheight; void* minwidth; int cursorMode; int focusOnShow; int floating; int autoIconify; int decorated; int resizable; TYPE_1__ videoMode; struct TYPE_23__* next; } ;
typedef TYPE_4__ _GLFWwindow ;
typedef int _GLFWmonitor ;
struct TYPE_24__ {int blueBits; int greenBits; int redBits; } ;
typedef TYPE_5__ _GLFWfbconfig ;
struct TYPE_25__ {scalar_t__ client; TYPE_4__* share; } ;
typedef TYPE_6__ _GLFWctxconfig ;
struct TYPE_21__ {int refreshRate; TYPE_3__ window; TYPE_6__ context; TYPE_5__ framebuffer; } ;
struct TYPE_19__ {TYPE_2__ hints; TYPE_4__* windowListHead; } ;
typedef int GLFWwindow ;
typedef int GLFWmonitor ;


 int GLFW_CURSOR_NORMAL ;
 void* GLFW_DONT_CARE ;
 int GLFW_INVALID_VALUE ;
 scalar_t__ GLFW_NO_API ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_18__ _glfw ;
 int _glfwCenterCursorInContentArea (TYPE_4__*) ;
 int _glfwInputError (int ,char*,int,int) ;
 int _glfwIsValidContextConfig (TYPE_6__*) ;
 int _glfwPlatformCreateWindow (TYPE_4__*,TYPE_3__*,TYPE_6__*,TYPE_5__*) ;
 int _glfwPlatformFocusWindow (TYPE_4__*) ;
 int _glfwPlatformShowWindow (TYPE_4__*) ;
 int _glfwRefreshContextAttribs (TYPE_4__*,TYPE_6__*) ;
 int assert (int) ;
 TYPE_4__* calloc (int,int) ;
 int glfwDestroyWindow (int *) ;

GLFWwindow* glfwCreateWindow(int width, int height,
                                     const char* title,
                                     GLFWmonitor* monitor,
                                     GLFWwindow* share)
{
    _GLFWfbconfig fbconfig;
    _GLFWctxconfig ctxconfig;
    _GLFWwndconfig wndconfig;
    _GLFWwindow* window;

    assert(title != ((void*)0));
    assert(width >= 0);
    assert(height >= 0);

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (width <= 0 || height <= 0)
    {
        _glfwInputError(GLFW_INVALID_VALUE,
                        "Invalid window size %ix%i",
                        width, height);

        return ((void*)0);
    }

    fbconfig = _glfw.hints.framebuffer;
    ctxconfig = _glfw.hints.context;
    wndconfig = _glfw.hints.window;

    wndconfig.width = width;
    wndconfig.height = height;
    wndconfig.title = title;
    ctxconfig.share = (_GLFWwindow*) share;

    if (!_glfwIsValidContextConfig(&ctxconfig))
        return ((void*)0);

    window = calloc(1, sizeof(_GLFWwindow));
    window->next = _glfw.windowListHead;
    _glfw.windowListHead = window;

    window->videoMode.width = width;
    window->videoMode.height = height;
    window->videoMode.redBits = fbconfig.redBits;
    window->videoMode.greenBits = fbconfig.greenBits;
    window->videoMode.blueBits = fbconfig.blueBits;
    window->videoMode.refreshRate = _glfw.hints.refreshRate;

    window->monitor = (_GLFWmonitor*) monitor;
    window->resizable = wndconfig.resizable;
    window->decorated = wndconfig.decorated;
    window->autoIconify = wndconfig.autoIconify;
    window->floating = wndconfig.floating;
    window->focusOnShow = wndconfig.focusOnShow;
    window->cursorMode = GLFW_CURSOR_NORMAL;

    window->minwidth = GLFW_DONT_CARE;
    window->minheight = GLFW_DONT_CARE;
    window->maxwidth = GLFW_DONT_CARE;
    window->maxheight = GLFW_DONT_CARE;
    window->numer = GLFW_DONT_CARE;
    window->denom = GLFW_DONT_CARE;


    if (!_glfwPlatformCreateWindow(window, &wndconfig, &ctxconfig, &fbconfig))
    {
        glfwDestroyWindow((GLFWwindow*) window);
        return ((void*)0);
    }

    if (ctxconfig.client != GLFW_NO_API)
    {
        if (!_glfwRefreshContextAttribs(window, &ctxconfig))
        {
            glfwDestroyWindow((GLFWwindow*) window);
            return ((void*)0);
        }
    }

    if (window->monitor)
    {
        if (wndconfig.centerCursor)
            _glfwCenterCursorInContentArea(window);
    }
    else
    {
        if (wndconfig.visible)
        {
            _glfwPlatformShowWindow(window);
            if (wndconfig.focused)
                _glfwPlatformFocusWindow(window);
        }
    }

    return (GLFWwindow*) window;
}
