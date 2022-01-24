#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  crtc; } ;
struct TYPE_19__ {TYPE_2__ x11; } ;
typedef  TYPE_5__ _GLFWmonitor ;
struct TYPE_20__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  TYPE_6__ XRRCrtcGamma ;
struct TYPE_21__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; int /*<<< orphan*/  size; } ;
struct TYPE_17__ {scalar_t__ available; } ;
struct TYPE_15__ {int /*<<< orphan*/  gammaBroken; scalar_t__ available; } ;
struct TYPE_18__ {int /*<<< orphan*/  screen; int /*<<< orphan*/  display; TYPE_3__ vidmode; TYPE_1__ randr; } ;
struct TYPE_14__ {TYPE_4__ x11; } ;
typedef  TYPE_7__ GLFWgammaramp ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_11__ _glfw ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const) ; 

GLFWbool FUNC8(_GLFWmonitor* monitor, GLFWgammaramp* ramp)
{
    if (_glfw.x11.randr.available && !_glfw.x11.randr.gammaBroken)
    {
        const size_t size = FUNC4(_glfw.x11.display,
                                                monitor->x11.crtc);
        XRRCrtcGamma* gamma = FUNC3(_glfw.x11.display,
                                              monitor->x11.crtc);

        FUNC5(ramp, size);

        FUNC7(ramp->red,   gamma->red,   size * sizeof(unsigned short));
        FUNC7(ramp->green, gamma->green, size * sizeof(unsigned short));
        FUNC7(ramp->blue,  gamma->blue,  size * sizeof(unsigned short));

        FUNC2(gamma);
        return GLFW_TRUE;
    }
    else if (_glfw.x11.vidmode.available)
    {
        int size;
        FUNC1(_glfw.x11.display, _glfw.x11.screen, &size);

        FUNC5(ramp, size);

        FUNC0(_glfw.x11.display,
                                _glfw.x11.screen,
                                ramp->size, ramp->red, ramp->green, ramp->blue);
        return GLFW_TRUE;
    }
    else
    {
        FUNC6(GLFW_PLATFORM_ERROR,
                        "X11: Gamma ramp access not supported by server");
        return GLFW_FALSE;
    }
}