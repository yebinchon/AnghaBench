#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  handle; } ;
struct TYPE_11__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_12__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HWND_TOP ; 
 int SWP_FRAMECHANGED ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_POPUP ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*) ; 
 int FUNC10 (TYPE_2__ const*) ; 

__attribute__((used)) static void FUNC11(const _GLFWwindow* window)
{
    RECT rect;
    DWORD style = FUNC5(window->win32.handle, GWL_STYLE);
    style &= ~(WS_OVERLAPPEDWINDOW | WS_POPUP);
    style |= FUNC10(window);

    FUNC3(window->win32.handle, &rect);

    if (FUNC8())
    {
        FUNC1(&rect, style, FALSE,
                                 FUNC9(window),
                                 FUNC4(window->win32.handle));
    }
    else
        FUNC0(&rect, style, FALSE, FUNC9(window));

    FUNC2(window->win32.handle, (POINT*) &rect.left);
    FUNC2(window->win32.handle, (POINT*) &rect.right);
    FUNC6(window->win32.handle, GWL_STYLE, style);
    FUNC7(window->win32.handle, HWND_TOP,
                 rect.left, rect.top,
                 rect.right - rect.left, rect.bottom - rect.top,
                 SWP_FRAMECHANGED | SWP_NOACTIVATE | SWP_NOZORDER);
}