#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_18__ ;

/* Type definitions */
struct TYPE_22__ {int width; int height; char const* title; scalar_t__ focused; scalar_t__ visible; scalar_t__ centerCursor; int /*<<< orphan*/  focusOnShow; int /*<<< orphan*/  floating; int /*<<< orphan*/  autoIconify; int /*<<< orphan*/  decorated; int /*<<< orphan*/  resizable; } ;
typedef  TYPE_3__ _GLFWwndconfig ;
struct TYPE_20__ {int width; int height; int /*<<< orphan*/  refreshRate; int /*<<< orphan*/  blueBits; int /*<<< orphan*/  greenBits; int /*<<< orphan*/  redBits; } ;
struct TYPE_23__ {int /*<<< orphan*/ * monitor; void* denom; void* numer; void* maxheight; void* maxwidth; void* minheight; void* minwidth; int /*<<< orphan*/  cursorMode; int /*<<< orphan*/  focusOnShow; int /*<<< orphan*/  floating; int /*<<< orphan*/  autoIconify; int /*<<< orphan*/  decorated; int /*<<< orphan*/  resizable; TYPE_1__ videoMode; struct TYPE_23__* next; } ;
typedef  TYPE_4__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWmonitor ;
struct TYPE_24__ {int /*<<< orphan*/  blueBits; int /*<<< orphan*/  greenBits; int /*<<< orphan*/  redBits; } ;
typedef  TYPE_5__ _GLFWfbconfig ;
struct TYPE_25__ {scalar_t__ client; TYPE_4__* share; } ;
typedef  TYPE_6__ _GLFWctxconfig ;
struct TYPE_21__ {int /*<<< orphan*/  refreshRate; TYPE_3__ window; TYPE_6__ context; TYPE_5__ framebuffer; } ;
struct TYPE_19__ {TYPE_2__ hints; TYPE_4__* windowListHead; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_CURSOR_NORMAL ; 
 void* GLFW_DONT_CARE ; 
 int /*<<< orphan*/  GLFW_INVALID_VALUE ; 
 scalar_t__ GLFW_NO_API ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_18__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_4__* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

GLFWwindow* FUNC11(int width, int height,
                                     const char* title,
                                     GLFWmonitor* monitor,
                                     GLFWwindow* share)
{
    _GLFWfbconfig fbconfig;
    _GLFWctxconfig ctxconfig;
    _GLFWwndconfig wndconfig;
    _GLFWwindow* window;

    FUNC8(title != NULL);
    FUNC8(width >= 0);
    FUNC8(height >= 0);

    FUNC0(NULL);

    if (width <= 0 || height <= 0)
    {
        FUNC2(GLFW_INVALID_VALUE,
                        "Invalid window size %ix%i",
                        width, height);

        return NULL;
    }

    fbconfig  = _glfw.hints.framebuffer;
    ctxconfig = _glfw.hints.context;
    wndconfig = _glfw.hints.window;

    wndconfig.width   = width;
    wndconfig.height  = height;
    wndconfig.title   = title;
    ctxconfig.share   = (_GLFWwindow*) share;

    if (!FUNC3(&ctxconfig))
        return NULL;

    window = FUNC9(1, sizeof(_GLFWwindow));
    window->next = _glfw.windowListHead;
    _glfw.windowListHead = window;

    window->videoMode.width       = width;
    window->videoMode.height      = height;
    window->videoMode.redBits     = fbconfig.redBits;
    window->videoMode.greenBits   = fbconfig.greenBits;
    window->videoMode.blueBits    = fbconfig.blueBits;
    window->videoMode.refreshRate = _glfw.hints.refreshRate;

    window->monitor     = (_GLFWmonitor*) monitor;
    window->resizable   = wndconfig.resizable;
    window->decorated   = wndconfig.decorated;
    window->autoIconify = wndconfig.autoIconify;
    window->floating    = wndconfig.floating;
    window->focusOnShow = wndconfig.focusOnShow;
    window->cursorMode  = GLFW_CURSOR_NORMAL;

    window->minwidth    = GLFW_DONT_CARE;
    window->minheight   = GLFW_DONT_CARE;
    window->maxwidth    = GLFW_DONT_CARE;
    window->maxheight   = GLFW_DONT_CARE;
    window->numer       = GLFW_DONT_CARE;
    window->denom       = GLFW_DONT_CARE;

    // Open the actual window and create its context
    if (!FUNC4(window, &wndconfig, &ctxconfig, &fbconfig))
    {
        FUNC10((GLFWwindow*) window);
        return NULL;
    }

    if (ctxconfig.client != GLFW_NO_API)
    {
        if (!FUNC7(window, &ctxconfig))
        {
            FUNC10((GLFWwindow*) window);
            return NULL;
        }
    }

    if (window->monitor)
    {
        if (wndconfig.centerCursor)
            FUNC1(window);
    }
    else
    {
        if (wndconfig.visible)
        {
            FUNC6(window);
            if (wndconfig.focused)
                FUNC5(window);
        }
    }

    return (GLFWwindow*) window;
}