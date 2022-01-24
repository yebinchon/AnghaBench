#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ Window ;
struct TYPE_3__ {scalar_t__ root; void* NET_REQUEST_FRAME_EXTENTS; void* NET_FRAME_EXTENTS; void* NET_ACTIVE_WINDOW; void* NET_CURRENT_DESKTOP; void* NET_WORKAREA; void* NET_WM_WINDOW_TYPE_NORMAL; void* NET_WM_WINDOW_TYPE; void* NET_WM_FULLSCREEN_MONITORS; void* NET_WM_STATE_DEMANDS_ATTENTION; void* NET_WM_STATE_MAXIMIZED_HORZ; void* NET_WM_STATE_MAXIMIZED_VERT; void* NET_WM_STATE_FULLSCREEN; void* NET_WM_STATE_ABOVE; void* NET_WM_STATE; int /*<<< orphan*/  NET_SUPPORTED; int /*<<< orphan*/  NET_SUPPORTING_WM_CHECK; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  XA_ATOM ; 
 int /*<<< orphan*/  XA_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 TYPE_2__ _glfw ; 
 unsigned long FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (scalar_t__*,unsigned long const,char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    // First we read the _NET_SUPPORTING_WM_CHECK property on the root window

    Window* windowFromRoot = NULL;
    if (!FUNC1(_glfw.x11.root,
                                   _glfw.x11.NET_SUPPORTING_WM_CHECK,
                                   XA_WINDOW,
                                   (unsigned char**) &windowFromRoot))
    {
        return;
    }

    FUNC2();

    // If it exists, it should be the XID of a top-level window
    // Then we look for the same property on that window

    Window* windowFromChild = NULL;
    if (!FUNC1(*windowFromRoot,
                                   _glfw.x11.NET_SUPPORTING_WM_CHECK,
                                   XA_WINDOW,
                                   (unsigned char**) &windowFromChild))
    {
        FUNC0(windowFromRoot);
        return;
    }

    FUNC3();

    // If the property exists, it should contain the XID of the window

    if (*windowFromRoot != *windowFromChild)
    {
        FUNC0(windowFromRoot);
        FUNC0(windowFromChild);
        return;
    }

    FUNC0(windowFromRoot);
    FUNC0(windowFromChild);

    // We are now fairly sure that an EWMH-compliant WM is currently running
    // We can now start querying the WM about what features it supports by
    // looking in the _NET_SUPPORTED property on the root window
    // It should contain a list of supported EWMH protocol and state atoms

    Atom* supportedAtoms = NULL;
    const unsigned long atomCount =
        FUNC1(_glfw.x11.root,
                                  _glfw.x11.NET_SUPPORTED,
                                  XA_ATOM,
                                  (unsigned char**) &supportedAtoms);

    // See which of the atoms we support that are supported by the WM

    _glfw.x11.NET_WM_STATE =
        FUNC4(supportedAtoms, atomCount, "_NET_WM_STATE");
    _glfw.x11.NET_WM_STATE_ABOVE =
        FUNC4(supportedAtoms, atomCount, "_NET_WM_STATE_ABOVE");
    _glfw.x11.NET_WM_STATE_FULLSCREEN =
        FUNC4(supportedAtoms, atomCount, "_NET_WM_STATE_FULLSCREEN");
    _glfw.x11.NET_WM_STATE_MAXIMIZED_VERT =
        FUNC4(supportedAtoms, atomCount, "_NET_WM_STATE_MAXIMIZED_VERT");
    _glfw.x11.NET_WM_STATE_MAXIMIZED_HORZ =
        FUNC4(supportedAtoms, atomCount, "_NET_WM_STATE_MAXIMIZED_HORZ");
    _glfw.x11.NET_WM_STATE_DEMANDS_ATTENTION =
        FUNC4(supportedAtoms, atomCount, "_NET_WM_STATE_DEMANDS_ATTENTION");
    _glfw.x11.NET_WM_FULLSCREEN_MONITORS =
        FUNC4(supportedAtoms, atomCount, "_NET_WM_FULLSCREEN_MONITORS");
    _glfw.x11.NET_WM_WINDOW_TYPE =
        FUNC4(supportedAtoms, atomCount, "_NET_WM_WINDOW_TYPE");
    _glfw.x11.NET_WM_WINDOW_TYPE_NORMAL =
        FUNC4(supportedAtoms, atomCount, "_NET_WM_WINDOW_TYPE_NORMAL");
    _glfw.x11.NET_WORKAREA =
        FUNC4(supportedAtoms, atomCount, "_NET_WORKAREA");
    _glfw.x11.NET_CURRENT_DESKTOP =
        FUNC4(supportedAtoms, atomCount, "_NET_CURRENT_DESKTOP");
    _glfw.x11.NET_ACTIVE_WINDOW =
        FUNC4(supportedAtoms, atomCount, "_NET_ACTIVE_WINDOW");
    _glfw.x11.NET_FRAME_EXTENTS =
        FUNC4(supportedAtoms, atomCount, "_NET_FRAME_EXTENTS");
    _glfw.x11.NET_REQUEST_FRAME_EXTENTS =
        FUNC4(supportedAtoms, atomCount, "_NET_REQUEST_FRAME_EXTENTS");

    if (supportedAtoms)
        FUNC0(supportedAtoms);
}