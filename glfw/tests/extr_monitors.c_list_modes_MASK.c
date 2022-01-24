#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float width; int height; } ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float*,float*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC9 (TYPE_1__ const*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char) ; 

__attribute__((used)) static void FUNC12(GLFWmonitor* monitor)
{
    int count, x, y, width_mm, height_mm, i;
    int workarea_x, workarea_y, workarea_width, workarea_height;
    float xscale, yscale;

    const GLFWvidmode* mode = FUNC7(monitor);
    const GLFWvidmode* modes = FUNC8(monitor, &count);

    FUNC4(monitor, &x, &y);
    FUNC3(monitor, &width_mm, &height_mm);
    FUNC1(monitor, &xscale, &yscale);
    FUNC5(monitor, &workarea_x, &workarea_y, &workarea_width, &workarea_height);

    FUNC10("Name: %s (%s)\n",
           FUNC2(monitor),
           FUNC6() == monitor ? "primary" : "secondary");
    FUNC10("Current mode: %s\n", FUNC0(mode));
    FUNC10("Virtual position: %i, %i\n", x, y);
    FUNC10("Content scale: %f x %f\n", xscale, yscale);

    FUNC10("Physical size: %i x %i mm (%0.2f dpi at %i x %i)\n",
           width_mm, height_mm, mode->width * 25.4f / width_mm, mode->width, mode->height);
    FUNC10("Monitor work area: %i x %i starting at %i, %i\n",
            workarea_width, workarea_height, workarea_x, workarea_y);

    FUNC10("Modes:\n");

    for (i = 0;  i < count;  i++)
    {
        FUNC10("%3u: %s", (unsigned int) i, FUNC0(modes + i));

        if (FUNC9(mode, modes + i, sizeof(GLFWvidmode)) == 0)
            FUNC10(" (current mode)");

        FUNC11('\n');
    }
}