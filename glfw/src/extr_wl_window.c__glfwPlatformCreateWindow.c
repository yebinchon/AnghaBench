
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


struct TYPE_22__ {scalar_t__ visible; scalar_t__ title; } ;
typedef TYPE_3__ _GLFWwndconfig ;
struct TYPE_20__ {int * toplevel; int * surface; } ;
struct TYPE_21__ {int visible; int monitorsSize; scalar_t__ monitorsCount; int monitors; int * currentCursor; TYPE_1__ xdg; int title; int transparent; } ;
struct TYPE_23__ {TYPE_2__ wl; } ;
typedef TYPE_4__ _GLFWwindow ;
typedef int _GLFWmonitor ;
struct TYPE_24__ {int transparent; } ;
typedef TYPE_5__ _GLFWfbconfig ;
struct TYPE_25__ {scalar_t__ client; scalar_t__ source; } ;
typedef TYPE_6__ _GLFWctxconfig ;


 scalar_t__ GLFW_EGL_CONTEXT_API ;
 int GLFW_FALSE ;
 scalar_t__ GLFW_NATIVE_CONTEXT_API ;
 scalar_t__ GLFW_NO_API ;
 scalar_t__ GLFW_OSMESA_CONTEXT_API ;
 int GLFW_TRUE ;
 int _glfwCreateContextEGL (TYPE_4__*,TYPE_6__ const*,TYPE_5__ const*) ;
 int _glfwCreateContextOSMesa (TYPE_4__*,TYPE_6__ const*,TYPE_5__ const*) ;
 int _glfwInitEGL () ;
 int _glfwInitOSMesa () ;
 int _glfw_strdup (scalar_t__) ;
 int calloc (int,int) ;
 int createSurface (TYPE_4__*,TYPE_3__ const*) ;
 int createXdgSurface (TYPE_4__*) ;

int _glfwPlatformCreateWindow(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    window->wl.transparent = fbconfig->transparent;

    if (!createSurface(window, wndconfig))
        return GLFW_FALSE;

    if (ctxconfig->client != GLFW_NO_API)
    {
        if (ctxconfig->source == GLFW_EGL_CONTEXT_API ||
            ctxconfig->source == GLFW_NATIVE_CONTEXT_API)
        {
            if (!_glfwInitEGL())
                return GLFW_FALSE;
            if (!_glfwCreateContextEGL(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
        else if (ctxconfig->source == GLFW_OSMESA_CONTEXT_API)
        {
            if (!_glfwInitOSMesa())
                return GLFW_FALSE;
            if (!_glfwCreateContextOSMesa(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
    }

    if (wndconfig->title)
        window->wl.title = _glfw_strdup(wndconfig->title);

    if (wndconfig->visible)
    {
        if (!createXdgSurface(window))
            return GLFW_FALSE;

        window->wl.visible = GLFW_TRUE;
    }
    else
    {
        window->wl.xdg.surface = ((void*)0);
        window->wl.xdg.toplevel = ((void*)0);
        window->wl.visible = GLFW_FALSE;
    }

    window->wl.currentCursor = ((void*)0);

    window->wl.monitors = calloc(1, sizeof(_GLFWmonitor*));
    window->wl.monitorsCount = 0;
    window->wl.monitorsSize = 1;

    return GLFW_TRUE;
}
