#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  output; int /*<<< orphan*/  crtc; } ;
struct TYPE_14__ {TYPE_3__ x11; } ;
typedef  TYPE_4__ _GLFWmonitor ;
typedef  int /*<<< orphan*/  XRRScreenResources ;
struct TYPE_15__ {int nmode; int /*<<< orphan*/ * modes; } ;
typedef  TYPE_5__ XRROutputInfo ;
typedef  int /*<<< orphan*/  XRRModeInfo ;
typedef  int /*<<< orphan*/  XRRCrtcInfo ;
struct TYPE_11__ {int /*<<< orphan*/  monitorBroken; scalar_t__ available; } ;
struct TYPE_12__ {int /*<<< orphan*/  display; int /*<<< orphan*/  root; TYPE_1__ randr; } ;
struct TYPE_16__ {TYPE_2__ x11; } ;
typedef  int /*<<< orphan*/  GLFWvidmode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__ _glfw ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

GLFWvidmode* FUNC12(_GLFWmonitor* monitor, int* count)
{
    GLFWvidmode* result;

    *count = 0;

    if (_glfw.x11.randr.available && !_glfw.x11.randr.monitorBroken)
    {
        XRRScreenResources* sr =
            FUNC5(_glfw.x11.display, _glfw.x11.root);
        XRRCrtcInfo* ci = FUNC3(_glfw.x11.display, sr, monitor->x11.crtc);
        XRROutputInfo* oi = FUNC4(_glfw.x11.display, sr, monitor->x11.output);

        result = FUNC8(oi->nmode, sizeof(GLFWvidmode));

        for (int i = 0;  i < oi->nmode;  i++)
        {
            const XRRModeInfo* mi = FUNC9(sr, oi->modes[i]);
            if (!FUNC10(mi))
                continue;

            const GLFWvidmode mode = FUNC11(mi, ci);
            int j;

            for (j = 0;  j < *count;  j++)
            {
                if (FUNC6(result + j, &mode) == 0)
                    break;
            }

            // Skip duplicate modes
            if (j < *count)
                continue;

            (*count)++;
            result[*count - 1] = mode;
        }

        FUNC1(oi);
        FUNC0(ci);
        FUNC2(sr);
    }
    else
    {
        *count = 1;
        result = FUNC8(1, sizeof(GLFWvidmode));
        FUNC7(monitor, result);
    }

    return result;
}