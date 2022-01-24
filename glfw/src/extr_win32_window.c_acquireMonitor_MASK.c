#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* monitor; int /*<<< orphan*/  videoMode; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {int /*<<< orphan*/  acquiredMonitorCount; int /*<<< orphan*/  mouseTrailSize; } ;
struct TYPE_11__ {TYPE_1__ win32; } ;
struct TYPE_10__ {int /*<<< orphan*/  window; } ;

/* Variables and functions */
 int ES_CONTINUOUS ; 
 int ES_DISPLAY_REQUIRED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  SPI_GETMOUSETRAILS ; 
 int /*<<< orphan*/  SPI_SETMOUSETRAILS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_7__ _glfw ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(_GLFWwindow* window)
{
    if (!_glfw.win32.acquiredMonitorCount)
    {
        FUNC1(ES_CONTINUOUS | ES_DISPLAY_REQUIRED);

        // HACK: When mouse trails are enabled the cursor becomes invisible when
        //       the OpenGL ICD switches to page flipping
        if (FUNC0())
        {
            FUNC2(SPI_GETMOUSETRAILS, 0, &_glfw.win32.mouseTrailSize, 0);
            FUNC2(SPI_SETMOUSETRAILS, 0, 0, 0);
        }
    }

    if (!window->monitor->window)
        _glfw.win32.acquiredMonitorCount++;

    FUNC4(window->monitor, &window->videoMode);
    FUNC3(window->monitor, window);
}