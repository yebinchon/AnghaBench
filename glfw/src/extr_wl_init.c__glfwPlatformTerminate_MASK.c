#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_7__ {int /*<<< orphan*/ * handle; scalar_t__ context; scalar_t__ state; scalar_t__ keymap; scalar_t__ composeState; } ;
struct TYPE_6__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_9__ {scalar_t__ timerfd; scalar_t__ cursorTimerfd; scalar_t__ clipboardSendString; scalar_t__ clipboardString; scalar_t__ display; scalar_t__ registry; scalar_t__ idleInhibitManager; scalar_t__ pointerConstraints; scalar_t__ relativePointerManager; scalar_t__ seat; scalar_t__ keyboard; scalar_t__ pointer; scalar_t__ dataDeviceManager; scalar_t__ dataOffer; scalar_t__ dataDevice; scalar_t__ dataSource; scalar_t__ wmBase; scalar_t__ decorationManager; scalar_t__ viewporter; scalar_t__ shm; scalar_t__ compositor; scalar_t__ subcompositor; scalar_t__ cursorSurface; TYPE_3__ cursor; scalar_t__ cursorThemeHiDPI; scalar_t__ cursorTheme; TYPE_2__ xkb; TYPE_1__ egl; } ;
struct TYPE_10__ {TYPE_4__ wl; } ;

/* Variables and functions */
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__) ; 

void FUNC30(void)
{
#ifdef __linux__
    FUNC1();
#endif
    FUNC0();
    if (_glfw.wl.egl.handle)
    {
        FUNC2(_glfw.wl.egl.handle);
        _glfw.wl.egl.handle = NULL;
    }

#ifdef HAVE_XKBCOMMON_COMPOSE_H
    if (_glfw.wl.xkb.composeState)
        xkb_compose_state_unref(_glfw.wl.xkb.composeState);
#endif
    if (_glfw.wl.xkb.keymap)
        FUNC24(_glfw.wl.xkb.keymap);
    if (_glfw.wl.xkb.state)
        FUNC25(_glfw.wl.xkb.state);
    if (_glfw.wl.xkb.context)
        FUNC23(_glfw.wl.xkb.context);
    if (_glfw.wl.xkb.handle)
    {
        FUNC2(_glfw.wl.xkb.handle);
        _glfw.wl.xkb.handle = NULL;
    }

    if (_glfw.wl.cursorTheme)
        FUNC6(_glfw.wl.cursorTheme);
    if (_glfw.wl.cursorThemeHiDPI)
        FUNC6(_glfw.wl.cursorThemeHiDPI);
    if (_glfw.wl.cursor.handle)
    {
        FUNC2(_glfw.wl.cursor.handle);
        _glfw.wl.cursor.handle = NULL;
    }

    if (_glfw.wl.cursorSurface)
        FUNC19(_glfw.wl.cursorSurface);
    if (_glfw.wl.subcompositor)
        FUNC18(_glfw.wl.subcompositor);
    if (_glfw.wl.compositor)
        FUNC5(_glfw.wl.compositor);
    if (_glfw.wl.shm)
        FUNC17(_glfw.wl.shm);
    if (_glfw.wl.viewporter)
        FUNC20(_glfw.wl.viewporter);
    if (_glfw.wl.decorationManager)
        FUNC29(_glfw.wl.decorationManager);
    if (_glfw.wl.wmBase)
        FUNC21(_glfw.wl.wmBase);
    if (_glfw.wl.dataSource)
        FUNC10(_glfw.wl.dataSource);
    if (_glfw.wl.dataDevice)
        FUNC7(_glfw.wl.dataDevice);
    if (_glfw.wl.dataOffer)
        FUNC9(_glfw.wl.dataOffer);
    if (_glfw.wl.dataDeviceManager)
        FUNC8(_glfw.wl.dataDeviceManager);
    if (_glfw.wl.pointer)
        FUNC14(_glfw.wl.pointer);
    if (_glfw.wl.keyboard)
        FUNC13(_glfw.wl.keyboard);
    if (_glfw.wl.seat)
        FUNC16(_glfw.wl.seat);
    if (_glfw.wl.relativePointerManager)
        FUNC28(_glfw.wl.relativePointerManager);
    if (_glfw.wl.pointerConstraints)
        FUNC27(_glfw.wl.pointerConstraints);
    if (_glfw.wl.idleInhibitManager)
        FUNC26(_glfw.wl.idleInhibitManager);
    if (_glfw.wl.registry)
        FUNC15(_glfw.wl.registry);
    if (_glfw.wl.display)
    {
        FUNC12(_glfw.wl.display);
        FUNC11(_glfw.wl.display);
    }

    if (_glfw.wl.timerfd >= 0)
        FUNC3(_glfw.wl.timerfd);
    if (_glfw.wl.cursorTimerfd >= 0)
        FUNC3(_glfw.wl.cursorTimerfd);

    if (_glfw.wl.clipboardString)
        FUNC4(_glfw.wl.clipboardString);
    if (_glfw.wl.clipboardSendString)
        FUNC4(_glfw.wl.clipboardSendString);
}