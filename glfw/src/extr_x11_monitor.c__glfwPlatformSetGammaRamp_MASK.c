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
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  crtc; } ;
struct TYPE_19__ {TYPE_2__ x11; } ;
typedef  TYPE_5__ _GLFWmonitor ;
struct TYPE_20__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  TYPE_6__ XRRCrtcGamma ;
struct TYPE_21__ {int size; scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;
struct TYPE_17__ {scalar_t__ available; } ;
struct TYPE_15__ {int /*<<< orphan*/  gammaBroken; scalar_t__ available; } ;
struct TYPE_18__ {int /*<<< orphan*/  screen; int /*<<< orphan*/  display; TYPE_3__ vidmode; TYPE_1__ randr; } ;
struct TYPE_14__ {TYPE_4__ x11; } ;
typedef  TYPE_7__ GLFWgammaramp ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned short*,unsigned short*,unsigned short*) ; 
 TYPE_6__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 TYPE_10__ _glfw ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void FUNC7(_GLFWmonitor* monitor, const GLFWgammaramp* ramp)
{
    if (_glfw.x11.randr.available && !_glfw.x11.randr.gammaBroken)
    {
        if (FUNC3(_glfw.x11.display, monitor->x11.crtc) != ramp->size)
        {
            FUNC5(GLFW_PLATFORM_ERROR,
                            "X11: Gamma ramp size must match current ramp size");
            return;
        }

        XRRCrtcGamma* gamma = FUNC1(ramp->size);

        FUNC6(gamma->red,   ramp->red,   ramp->size * sizeof(unsigned short));
        FUNC6(gamma->green, ramp->green, ramp->size * sizeof(unsigned short));
        FUNC6(gamma->blue,  ramp->blue,  ramp->size * sizeof(unsigned short));

        FUNC4(_glfw.x11.display, monitor->x11.crtc, gamma);
        FUNC2(gamma);
    }
    else if (_glfw.x11.vidmode.available)
    {
        FUNC0(_glfw.x11.display,
                                _glfw.x11.screen,
                                ramp->size,
                                (unsigned short*) ramp->red,
                                (unsigned short*) ramp->green,
                                (unsigned short*) ramp->blue);
    }
    else
    {
        FUNC5(GLFW_PLATFORM_ERROR,
                        "X11: Gamma ramp access not supported by server");
    }
}