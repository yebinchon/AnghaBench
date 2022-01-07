
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


typedef int _GLFWwndconfig ;
struct TYPE_21__ {scalar_t__ monitor; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int _GLFWfbconfig ;
struct TYPE_22__ {scalar_t__ client; scalar_t__ source; } ;
typedef TYPE_3__ _GLFWctxconfig ;
typedef int Visual ;
struct TYPE_20__ {int display; int screen; } ;
struct TYPE_19__ {TYPE_1__ x11; } ;


 int DefaultDepth (int ,int ) ;
 int * DefaultVisual (int ,int ) ;
 scalar_t__ GLFW_EGL_CONTEXT_API ;
 int GLFW_FALSE ;
 scalar_t__ GLFW_NATIVE_CONTEXT_API ;
 scalar_t__ GLFW_NO_API ;
 scalar_t__ GLFW_OSMESA_CONTEXT_API ;
 int GLFW_TRUE ;
 int XFlush (int ) ;
 TYPE_18__ _glfw ;
 int _glfwChooseVisualEGL (int const*,TYPE_3__ const*,int const*,int **,int*) ;
 int _glfwChooseVisualGLX (int const*,TYPE_3__ const*,int const*,int **,int*) ;
 int _glfwCreateContextEGL (TYPE_2__*,TYPE_3__ const*,int const*) ;
 int _glfwCreateContextGLX (TYPE_2__*,TYPE_3__ const*,int const*) ;
 int _glfwCreateContextOSMesa (TYPE_2__*,TYPE_3__ const*,int const*) ;
 int _glfwInitEGL () ;
 int _glfwInitGLX () ;
 int _glfwInitOSMesa () ;
 int _glfwPlatformShowWindow (TYPE_2__*) ;
 int acquireMonitor (TYPE_2__*) ;
 int createNativeWindow (TYPE_2__*,int const*,int *,int) ;
 int updateWindowMode (TYPE_2__*) ;

int _glfwPlatformCreateWindow(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    Visual* visual;
    int depth;

    if (ctxconfig->client != GLFW_NO_API)
    {
        if (ctxconfig->source == GLFW_NATIVE_CONTEXT_API)
        {
            if (!_glfwInitGLX())
                return GLFW_FALSE;
            if (!_glfwChooseVisualGLX(wndconfig, ctxconfig, fbconfig, &visual, &depth))
                return GLFW_FALSE;
        }
        else if (ctxconfig->source == GLFW_EGL_CONTEXT_API)
        {
            if (!_glfwInitEGL())
                return GLFW_FALSE;
            if (!_glfwChooseVisualEGL(wndconfig, ctxconfig, fbconfig, &visual, &depth))
                return GLFW_FALSE;
        }
        else if (ctxconfig->source == GLFW_OSMESA_CONTEXT_API)
        {
            if (!_glfwInitOSMesa())
                return GLFW_FALSE;
        }
    }

    if (ctxconfig->client == GLFW_NO_API ||
        ctxconfig->source == GLFW_OSMESA_CONTEXT_API)
    {
        visual = DefaultVisual(_glfw.x11.display, _glfw.x11.screen);
        depth = DefaultDepth(_glfw.x11.display, _glfw.x11.screen);
    }

    if (!createNativeWindow(window, wndconfig, visual, depth))
        return GLFW_FALSE;

    if (ctxconfig->client != GLFW_NO_API)
    {
        if (ctxconfig->source == GLFW_NATIVE_CONTEXT_API)
        {
            if (!_glfwCreateContextGLX(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
        else if (ctxconfig->source == GLFW_EGL_CONTEXT_API)
        {
            if (!_glfwCreateContextEGL(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
        else if (ctxconfig->source == GLFW_OSMESA_CONTEXT_API)
        {
            if (!_glfwCreateContextOSMesa(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
    }

    if (window->monitor)
    {
        _glfwPlatformShowWindow(window);
        updateWindowMode(window);
        acquireMonitor(window);
    }

    XFlush(_glfw.x11.display);
    return GLFW_TRUE;
}
