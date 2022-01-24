#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  protocols ;
struct TYPE_24__ {char const* instanceName; char const* className; } ;
struct TYPE_27__ {int width; int height; char const* title; TYPE_1__ x11; scalar_t__ maximized; scalar_t__ floating; int /*<<< orphan*/  decorated; scalar_t__ scaleToMonitor; } ;
typedef  TYPE_4__ _GLFWwndconfig ;
struct TYPE_25__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  ypos; int /*<<< orphan*/  xpos; int /*<<< orphan*/  handle; int /*<<< orphan*/  ic; int /*<<< orphan*/  maximized; int /*<<< orphan*/  colormap; int /*<<< orphan*/  transparent; } ;
struct TYPE_28__ {TYPE_2__ x11; int /*<<< orphan*/  monitor; } ;
typedef  TYPE_5__ _GLFWwindow ;
struct TYPE_29__ {char* res_name; char* res_class; int /*<<< orphan*/  initial_state; int /*<<< orphan*/  flags; } ;
typedef  TYPE_6__ XWMHints ;
struct TYPE_30__ {int event_mask; scalar_t__ border_pixel; int /*<<< orphan*/  colormap; } ;
typedef  TYPE_7__ XSetWindowAttributes ;
typedef  int /*<<< orphan*/  XPointer ;
typedef  TYPE_6__ XClassHint ;
typedef  int /*<<< orphan*/  Visual ;
struct TYPE_26__ {int contentScaleX; int contentScaleY; scalar_t__ im; scalar_t__ XdndAware; int /*<<< orphan*/  display; scalar_t__ NET_WM_WINDOW_TYPE; scalar_t__ NET_WM_WINDOW_TYPE_NORMAL; scalar_t__ NET_WM_PID; scalar_t__ NET_WM_PING; scalar_t__ WM_DELETE_WINDOW; scalar_t__ NET_WM_STATE; scalar_t__ NET_WM_STATE_MAXIMIZED_HORZ; scalar_t__ NET_WM_STATE_MAXIMIZED_VERT; scalar_t__ NET_WM_STATE_ABOVE; int /*<<< orphan*/  context; int /*<<< orphan*/  root; } ;
struct TYPE_23__ {TYPE_3__ x11; } ;
typedef  int /*<<< orphan*/  GLFWbool ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  AllocNone ; 
 int ButtonPressMask ; 
 int ButtonReleaseMask ; 
 unsigned long CWBorderPixel ; 
 unsigned long CWColormap ; 
 unsigned long CWEventMask ; 
 int EnterWindowMask ; 
 int ExposureMask ; 
 int FocusChangeMask ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  InputOutput ; 
 int KeyPressMask ; 
 int KeyReleaseMask ; 
 int LeaveWindowMask ; 
 int /*<<< orphan*/  NormalState ; 
 int PointerMotionMask ; 
 int /*<<< orphan*/  PropModeReplace ; 
 int PropertyChangeMask ; 
 int /*<<< orphan*/  StateHint ; 
 int StructureNotifyMask ; 
 int VisibilityChangeMask ; 
 int /*<<< orphan*/  XA_ATOM ; 
 int /*<<< orphan*/  XA_CARDINAL ; 
 TYPE_6__* FUNC0 () ; 
 TYPE_6__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long const,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int XIMPreeditNothing ; 
 int XIMStatusNothing ; 
 int /*<<< orphan*/  XNClientWindow ; 
 int /*<<< orphan*/  XNFocusWindow ; 
 int /*<<< orphan*/  XNInputStyle ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ _GLFW_XDND_VERSION ; 
 TYPE_16__ _glfw ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 char* FUNC20 (char*) ; 
 long FUNC21 () ; 
 scalar_t__ FUNC22 (char const*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*,int,int) ; 

__attribute__((used)) static GLFWbool FUNC24(_GLFWwindow* window,
                                   const _GLFWwndconfig* wndconfig,
                                   Visual* visual, int depth)
{
    int width = wndconfig->width;
    int height = wndconfig->height;

    if (wndconfig->scaleToMonitor)
    {
        width *= _glfw.x11.contentScaleX;
        height *= _glfw.x11.contentScaleY;
    }

    // Create a colormap based on the visual used by the current context
    window->x11.colormap = FUNC3(_glfw.x11.display,
                                           _glfw.x11.root,
                                           visual,
                                           AllocNone);

    window->x11.transparent = FUNC14(visual);

    // Create the actual window
    {
        XSetWindowAttributes wa;
        const unsigned long wamask = CWBorderPixel | CWColormap | CWEventMask;

        wa.colormap = window->x11.colormap;
        wa.border_pixel = 0;
        wa.event_mask = StructureNotifyMask | KeyPressMask | KeyReleaseMask |
                        PointerMotionMask | ButtonPressMask | ButtonReleaseMask |
                        ExposureMask | FocusChangeMask | VisibilityChangeMask |
                        EnterWindowMask | LeaveWindowMask | PropertyChangeMask;

        FUNC11();

        window->x11.handle = FUNC5(_glfw.x11.display,
                                           _glfw.x11.root,
                                           0, 0,
                                           width, height,
                                           0,      // Border width
                                           depth,  // Color depth
                                           InputOutput,
                                           visual,
                                           wamask,
                                           &wa);

        FUNC19();

        if (!window->x11.handle)
        {
            FUNC13(GLFW_PLATFORM_ERROR,
                               "X11: Failed to create window");
            return GLFW_FALSE;
        }

        FUNC7(_glfw.x11.display,
                     window->x11.handle,
                     _glfw.x11.context,
                     (XPointer) window);
    }

    if (!wndconfig->decorated)
        FUNC17(window, GLFW_FALSE);

    if (_glfw.x11.NET_WM_STATE && !window->monitor)
    {
        Atom states[3];
        int count = 0;

        if (wndconfig->floating)
        {
            if (_glfw.x11.NET_WM_STATE_ABOVE)
                states[count++] = _glfw.x11.NET_WM_STATE_ABOVE;
        }

        if (wndconfig->maximized)
        {
            if (_glfw.x11.NET_WM_STATE_MAXIMIZED_VERT &&
                _glfw.x11.NET_WM_STATE_MAXIMIZED_HORZ)
            {
                states[count++] = _glfw.x11.NET_WM_STATE_MAXIMIZED_VERT;
                states[count++] = _glfw.x11.NET_WM_STATE_MAXIMIZED_HORZ;
                window->x11.maximized = GLFW_TRUE;
            }
        }

        if (count)
        {
            FUNC2(_glfw.x11.display, window->x11.handle,
                            _glfw.x11.NET_WM_STATE, XA_ATOM, 32,
                            PropModeReplace, (unsigned char*) &states, count);
        }
    }

    // Declare the WM protocols supported by GLFW
    {
        Atom protocols[] =
        {
            _glfw.x11.WM_DELETE_WINDOW,
            _glfw.x11.NET_WM_PING
        };

        FUNC10(_glfw.x11.display, window->x11.handle,
                        protocols, sizeof(protocols) / sizeof(Atom));
    }

    // Declare our PID
    {
        const long pid = FUNC21();

        FUNC2(_glfw.x11.display,  window->x11.handle,
                        _glfw.x11.NET_WM_PID, XA_CARDINAL, 32,
                        PropModeReplace,
                        (unsigned char*) &pid, 1);
    }

    if (_glfw.x11.NET_WM_WINDOW_TYPE && _glfw.x11.NET_WM_WINDOW_TYPE_NORMAL)
    {
        Atom type = _glfw.x11.NET_WM_WINDOW_TYPE_NORMAL;
        FUNC2(_glfw.x11.display,  window->x11.handle,
                        _glfw.x11.NET_WM_WINDOW_TYPE, XA_ATOM, 32,
                        PropModeReplace, (unsigned char*) &type, 1);
    }

    // Set ICCCM WM_HINTS property
    {
        XWMHints* hints = FUNC1();
        if (!hints)
        {
            FUNC12(GLFW_OUT_OF_MEMORY,
                            "X11: Failed to allocate WM hints");
            return GLFW_FALSE;
        }

        hints->flags = StateHint;
        hints->initial_state = NormalState;

        FUNC9(_glfw.x11.display, window->x11.handle, hints);
        FUNC6(hints);
    }

    FUNC23(window, width, height);

    // Set ICCCM WM_CLASS property
    {
        XClassHint* hint = FUNC0();

        if (FUNC22(wndconfig->x11.instanceName) &&
            FUNC22(wndconfig->x11.className))
        {
            hint->res_name = (char*) wndconfig->x11.instanceName;
            hint->res_class = (char*) wndconfig->x11.className;
        }
        else
        {
            const char* resourceName = FUNC20("RESOURCE_NAME");
            if (resourceName && FUNC22(resourceName))
                hint->res_name = (char*) resourceName;
            else if (FUNC22(wndconfig->title))
                hint->res_name = (char*) wndconfig->title;
            else
                hint->res_name = (char*) "glfw-application";

            if (FUNC22(wndconfig->title))
                hint->res_class = (char*) wndconfig->title;
            else
                hint->res_class = (char*) "GLFW-Application";
        }

        FUNC8(_glfw.x11.display, window->x11.handle, hint);
        FUNC6(hint);
    }

    // Announce support for Xdnd (drag and drop)
    {
        const Atom version = _GLFW_XDND_VERSION;
        FUNC2(_glfw.x11.display, window->x11.handle,
                        _glfw.x11.XdndAware, XA_ATOM, 32,
                        PropModeReplace, (unsigned char*) &version, 1);
    }

    FUNC18(window, wndconfig->title);

    if (_glfw.x11.im)
    {
        window->x11.ic = FUNC4(_glfw.x11.im,
                                   XNInputStyle,
                                   XIMPreeditNothing | XIMStatusNothing,
                                   XNClientWindow,
                                   window->x11.handle,
                                   XNFocusWindow,
                                   window->x11.handle,
                                   NULL);
    }

    FUNC15(window, &window->x11.xpos, &window->x11.ypos);
    FUNC16(window, &window->x11.width, &window->x11.height);

    return GLFW_TRUE;
}