#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_15__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_14__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_13__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_12__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_11__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_10__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_17__ {scalar_t__ helperWindowHandle; TYPE_7__ xi; TYPE_6__ vidmode; TYPE_5__ xrender; TYPE_4__ xinerama; TYPE_3__ randr; TYPE_2__ xcursor; TYPE_1__ x11xcb; int /*<<< orphan*/ * display; int /*<<< orphan*/ * im; int /*<<< orphan*/  clipboardString; int /*<<< orphan*/  primarySelectionString; scalar_t__ hiddenCursorHandle; int /*<<< orphan*/  CLIPBOARD; } ;
struct TYPE_18__ {TYPE_8__ x11; } ;
typedef  scalar_t__ Cursor ;

/* Variables and functions */
 scalar_t__ None ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_9__ _glfw ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
    if (_glfw.x11.helperWindowHandle)
    {
        if (FUNC4(_glfw.x11.display, _glfw.x11.CLIPBOARD) ==
            _glfw.x11.helperWindowHandle)
        {
            FUNC5();
        }

        FUNC2(_glfw.x11.display, _glfw.x11.helperWindowHandle);
        _glfw.x11.helperWindowHandle = None;
    }

    if (_glfw.x11.hiddenCursorHandle)
    {
        FUNC3(_glfw.x11.display, _glfw.x11.hiddenCursorHandle);
        _glfw.x11.hiddenCursorHandle = (Cursor) 0;
    }

    FUNC10(_glfw.x11.primarySelectionString);
    FUNC10(_glfw.x11.clipboardString);

    if (_glfw.x11.im)
    {
        FUNC1(_glfw.x11.im);
        _glfw.x11.im = NULL;
    }

    if (_glfw.x11.display)
    {
        FUNC0(_glfw.x11.display);
        _glfw.x11.display = NULL;
    }

    if (_glfw.x11.x11xcb.handle)
    {
        FUNC9(_glfw.x11.x11xcb.handle);
        _glfw.x11.x11xcb.handle = NULL;
    }

    if (_glfw.x11.xcursor.handle)
    {
        FUNC9(_glfw.x11.xcursor.handle);
        _glfw.x11.xcursor.handle = NULL;
    }

    if (_glfw.x11.randr.handle)
    {
        FUNC9(_glfw.x11.randr.handle);
        _glfw.x11.randr.handle = NULL;
    }

    if (_glfw.x11.xinerama.handle)
    {
        FUNC9(_glfw.x11.xinerama.handle);
        _glfw.x11.xinerama.handle = NULL;
    }

    if (_glfw.x11.xrender.handle)
    {
        FUNC9(_glfw.x11.xrender.handle);
        _glfw.x11.xrender.handle = NULL;
    }

    if (_glfw.x11.vidmode.handle)
    {
        FUNC9(_glfw.x11.vidmode.handle);
        _glfw.x11.vidmode.handle = NULL;
    }

    if (_glfw.x11.xi.handle)
    {
        FUNC9(_glfw.x11.xi.handle);
        _glfw.x11.xi.handle = NULL;
    }

    // NOTE: These need to be unloaded after XCloseDisplay, as they register
    //       cleanup callbacks that get called by that function
    FUNC6();
    FUNC7();

#if defined(__linux__)
    FUNC8();
#endif
}