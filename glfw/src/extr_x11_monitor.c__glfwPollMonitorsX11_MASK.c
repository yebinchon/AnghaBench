#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_15__ ;

/* Type definitions */
struct TYPE_29__ {scalar_t__ output; scalar_t__ crtc; int index; } ;
struct TYPE_31__ {TYPE_3__ x11; } ;
typedef  TYPE_5__ _GLFWmonitor ;
struct TYPE_32__ {scalar_t__ x_org; scalar_t__ y_org; float width; float height; } ;
typedef  TYPE_6__ XineramaScreenInfo ;
struct TYPE_33__ {int noutput; scalar_t__* outputs; } ;
typedef  TYPE_7__ XRRScreenResources ;
struct TYPE_34__ {scalar_t__ connection; scalar_t__ crtc; int mm_height; int mm_width; char* name; } ;
typedef  TYPE_8__ XRROutputInfo ;
struct TYPE_35__ {scalar_t__ rotation; float width; float height; scalar_t__ x; scalar_t__ y; } ;
typedef  TYPE_9__ XRRCrtcInfo ;
struct TYPE_28__ {scalar_t__ available; } ;
struct TYPE_27__ {int /*<<< orphan*/  monitorBroken; scalar_t__ available; } ;
struct TYPE_30__ {int /*<<< orphan*/  screen; int /*<<< orphan*/  display; TYPE_2__ xinerama; int /*<<< orphan*/  root; TYPE_1__ randr; } ;
struct TYPE_26__ {int monitorCount; TYPE_4__ x11; int /*<<< orphan*/  monitors; } ;
typedef  scalar_t__ RROutput ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLFW_CONNECTED ; 
 int /*<<< orphan*/  GLFW_DISCONNECTED ; 
 scalar_t__ None ; 
 scalar_t__ RR_Connected ; 
 scalar_t__ RR_Rotate_270 ; 
 scalar_t__ RR_Rotate_90 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 TYPE_9__* FUNC6 (int /*<<< orphan*/ ,TYPE_7__*,scalar_t__) ; 
 TYPE_8__* FUNC7 (int /*<<< orphan*/ ,TYPE_7__*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int _GLFW_INSERT_FIRST ; 
 int _GLFW_INSERT_LAST ; 
 TYPE_15__ _glfw ; 
 TYPE_5__* FUNC11 (char*,int const,int const) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 TYPE_5__** FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__**,int /*<<< orphan*/ ,int) ; 

void FUNC16(void)
{
    if (_glfw.x11.randr.available && !_glfw.x11.randr.monitorBroken)
    {
        int disconnectedCount, screenCount = 0;
        _GLFWmonitor** disconnected = NULL;
        XineramaScreenInfo* screens = NULL;
        XRRScreenResources* sr = FUNC9(_glfw.x11.display,
                                                              _glfw.x11.root);
        RROutput primary = FUNC8(_glfw.x11.display,
                                               _glfw.x11.root);

        if (_glfw.x11.xinerama.available)
            screens = FUNC10(_glfw.x11.display, &screenCount);

        disconnectedCount = _glfw.monitorCount;
        if (disconnectedCount)
        {
            disconnected = FUNC13(_glfw.monitorCount, sizeof(_GLFWmonitor*));
            FUNC15(disconnected,
                   _glfw.monitors,
                   _glfw.monitorCount * sizeof(_GLFWmonitor*));
        }

        for (int i = 0;  i < sr->noutput;  i++)
        {
            int j, type, widthMM, heightMM;

            XRROutputInfo* oi = FUNC7(_glfw.x11.display, sr, sr->outputs[i]);
            if (oi->connection != RR_Connected || oi->crtc == None)
            {
                FUNC4(oi);
                continue;
            }

            for (j = 0;  j < disconnectedCount;  j++)
            {
                if (disconnected[j] &&
                    disconnected[j]->x11.output == sr->outputs[i])
                {
                    disconnected[j] = NULL;
                    break;
                }
            }

            if (j < disconnectedCount)
            {
                FUNC4(oi);
                continue;
            }

            XRRCrtcInfo* ci = FUNC6(_glfw.x11.display, sr, oi->crtc);
            if (ci->rotation == RR_Rotate_90 || ci->rotation == RR_Rotate_270)
            {
                widthMM  = oi->mm_height;
                heightMM = oi->mm_width;
            }
            else
            {
                widthMM  = oi->mm_width;
                heightMM = oi->mm_height;
            }

            if (widthMM <= 0 || heightMM <= 0)
            {
                // HACK: If RandR does not provide a physical size, assume the
                //       X11 default 96 DPI and calcuate from the CRTC viewport
                // NOTE: These members are affected by rotation, unlike the mode
                //       info and output info members
                widthMM  = (int) (ci->width * 25.4f / 96.f);
                heightMM = (int) (ci->height * 25.4f / 96.f);
            }

            _GLFWmonitor* monitor = FUNC11(oi->name, widthMM, heightMM);
            monitor->x11.output = sr->outputs[i];
            monitor->x11.crtc   = oi->crtc;

            for (j = 0;  j < screenCount;  j++)
            {
                if (screens[j].x_org == ci->x &&
                    screens[j].y_org == ci->y &&
                    screens[j].width == ci->width &&
                    screens[j].height == ci->height)
                {
                    monitor->x11.index = j;
                    break;
                }
            }

            if (monitor->x11.output == primary)
                type = _GLFW_INSERT_FIRST;
            else
                type = _GLFW_INSERT_LAST;

            FUNC12(monitor, GLFW_CONNECTED, type);

            FUNC4(oi);
            FUNC3(ci);
        }

        FUNC5(sr);

        if (screens)
            FUNC2(screens);

        for (int i = 0;  i < disconnectedCount;  i++)
        {
            if (disconnected[i])
                FUNC12(disconnected[i], GLFW_DISCONNECTED, 0);
        }

        FUNC14(disconnected);
    }
    else
    {
        const int widthMM = FUNC1(_glfw.x11.display, _glfw.x11.screen);
        const int heightMM = FUNC0(_glfw.x11.display, _glfw.x11.screen);

        FUNC12(FUNC11("Display", widthMM, heightMM),
                          GLFW_CONNECTED,
                          _GLFW_INSERT_FIRST);
    }
}