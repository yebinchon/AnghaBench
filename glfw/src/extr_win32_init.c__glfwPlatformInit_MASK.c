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
struct TYPE_3__ {int /*<<< orphan*/  foregroundLockTimeout; } ;
struct TYPE_4__ {TYPE_1__ win32; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 ; 
 int GLFW_FALSE ; 
 int GLFW_TRUE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  PROCESS_PER_MONITOR_DPI_AWARE ; 
 int /*<<< orphan*/  SPIF_SENDCHANGE ; 
 int /*<<< orphan*/  SPI_GETFOREGROUNDLOCKTIMEOUT ; 
 int /*<<< orphan*/  SPI_SETFOREGROUNDLOCKTIMEOUT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

int FUNC16(void)
{
    // To make SetForegroundWindow work as we want, we need to fiddle
    // with the FOREGROUNDLOCKTIMEOUT system setting (we do this as early
    // as possible in the hope of still being the foreground process)
    FUNC5(SPI_GETFOREGROUNDLOCKTIMEOUT, 0,
                          &_glfw.win32.foregroundLockTimeout, 0);
    FUNC5(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, FUNC6(0),
                          SPIF_SENDCHANGE);

    if (!FUNC15())
        return GLFW_FALSE;

    FUNC14();
    FUNC12();

    if (FUNC9())
        FUNC4(DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2);
    else if (FUNC0())
        FUNC3(PROCESS_PER_MONITOR_DPI_AWARE);
    else if (FUNC1())
        FUNC2();

    if (!FUNC11())
        return GLFW_FALSE;

    if (!FUNC13())
        return GLFW_FALSE;

    FUNC8();
    FUNC7();

    FUNC10();
    return GLFW_TRUE;
}