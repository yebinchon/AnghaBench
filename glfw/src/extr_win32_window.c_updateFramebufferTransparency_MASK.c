#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;
struct TYPE_7__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {int dwFlags; int /*<<< orphan*/  fEnable; int /*<<< orphan*/  hRgnBlur; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  TYPE_3__ DWM_BLURBEHIND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int DWM_BB_BLURREGION ; 
 int DWM_BB_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  LWA_COLORKEY ; 
 int RDW_ERASE ; 
 int RDW_FRAME ; 
 int RDW_INVALIDATE ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WS_EX_LAYERED ; 

__attribute__((used)) static void FUNC11(const _GLFWwindow* window)
{
    BOOL enabled;

    if (!FUNC5())
        return;

    if (FUNC8(FUNC3(&enabled)) && enabled)
    {
        HRGN region = FUNC0(0, 0, -1, -1);
        DWM_BLURBEHIND bb = {0};
        bb.dwFlags = DWM_BB_ENABLE | DWM_BB_BLURREGION;
        bb.hRgnBlur = region;
        bb.fEnable = TRUE;

        if (FUNC8(FUNC2(window->win32.handle, &bb)))
        {
            // Decorated windows don't repaint the transparent background
            // leaving a trail behind animations
            // HACK: Making the window layered with a transparency color key
            //       seems to fix this.  Normally, when specifying
            //       a transparency color key to be used when composing the
            //       layered window, all pixels painted by the window in this
            //       color will be transparent.  That doesn't seem to be the
            //       case anymore, at least when used with blur behind window
            //       plus negative region.
            LONG exStyle = FUNC4(window->win32.handle, GWL_EXSTYLE);
            exStyle |= WS_EX_LAYERED;
            FUNC10(window->win32.handle, GWL_EXSTYLE, exStyle);

            // Using a color key not equal to black to fix the trailing
            // issue.  When set to black, something is making the hit test
            // not resize with the window frame.
            FUNC9(window->win32.handle,
                                       FUNC6(255, 0, 255), 255, LWA_COLORKEY);
        }

        FUNC1(region);
    }
    else
    {
        LONG exStyle = FUNC4(window->win32.handle, GWL_EXSTYLE);
        exStyle &= ~WS_EX_LAYERED;
        FUNC10(window->win32.handle, GWL_EXSTYLE, exStyle);
        FUNC7(window->win32.handle, NULL, NULL,
                     RDW_ERASE | RDW_INVALIDATE | RDW_FRAME);
    }
}