
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_15__ ;


struct TYPE_29__ {scalar_t__ output; scalar_t__ crtc; int index; } ;
struct TYPE_31__ {TYPE_3__ x11; } ;
typedef TYPE_5__ _GLFWmonitor ;
struct TYPE_32__ {scalar_t__ x_org; scalar_t__ y_org; float width; float height; } ;
typedef TYPE_6__ XineramaScreenInfo ;
struct TYPE_33__ {int noutput; scalar_t__* outputs; } ;
typedef TYPE_7__ XRRScreenResources ;
struct TYPE_34__ {scalar_t__ connection; scalar_t__ crtc; int mm_height; int mm_width; char* name; } ;
typedef TYPE_8__ XRROutputInfo ;
struct TYPE_35__ {scalar_t__ rotation; float width; float height; scalar_t__ x; scalar_t__ y; } ;
typedef TYPE_9__ XRRCrtcInfo ;
struct TYPE_28__ {scalar_t__ available; } ;
struct TYPE_27__ {int monitorBroken; scalar_t__ available; } ;
struct TYPE_30__ {int screen; int display; TYPE_2__ xinerama; int root; TYPE_1__ randr; } ;
struct TYPE_26__ {int monitorCount; TYPE_4__ x11; int monitors; } ;
typedef scalar_t__ RROutput ;


 int DisplayHeightMM (int ,int ) ;
 int DisplayWidthMM (int ,int ) ;
 int GLFW_CONNECTED ;
 int GLFW_DISCONNECTED ;
 scalar_t__ None ;
 scalar_t__ RR_Connected ;
 scalar_t__ RR_Rotate_270 ;
 scalar_t__ RR_Rotate_90 ;
 int XFree (TYPE_6__*) ;
 int XRRFreeCrtcInfo (TYPE_9__*) ;
 int XRRFreeOutputInfo (TYPE_8__*) ;
 int XRRFreeScreenResources (TYPE_7__*) ;
 TYPE_9__* XRRGetCrtcInfo (int ,TYPE_7__*,scalar_t__) ;
 TYPE_8__* XRRGetOutputInfo (int ,TYPE_7__*,scalar_t__) ;
 scalar_t__ XRRGetOutputPrimary (int ,int ) ;
 TYPE_7__* XRRGetScreenResourcesCurrent (int ,int ) ;
 TYPE_6__* XineramaQueryScreens (int ,int*) ;
 int _GLFW_INSERT_FIRST ;
 int _GLFW_INSERT_LAST ;
 TYPE_15__ _glfw ;
 TYPE_5__* _glfwAllocMonitor (char*,int const,int const) ;
 int _glfwInputMonitor (TYPE_5__*,int ,int) ;
 TYPE_5__** calloc (int,int) ;
 int free (TYPE_5__**) ;
 int memcpy (TYPE_5__**,int ,int) ;

void _glfwPollMonitorsX11(void)
{
    if (_glfw.x11.randr.available && !_glfw.x11.randr.monitorBroken)
    {
        int disconnectedCount, screenCount = 0;
        _GLFWmonitor** disconnected = ((void*)0);
        XineramaScreenInfo* screens = ((void*)0);
        XRRScreenResources* sr = XRRGetScreenResourcesCurrent(_glfw.x11.display,
                                                              _glfw.x11.root);
        RROutput primary = XRRGetOutputPrimary(_glfw.x11.display,
                                               _glfw.x11.root);

        if (_glfw.x11.xinerama.available)
            screens = XineramaQueryScreens(_glfw.x11.display, &screenCount);

        disconnectedCount = _glfw.monitorCount;
        if (disconnectedCount)
        {
            disconnected = calloc(_glfw.monitorCount, sizeof(_GLFWmonitor*));
            memcpy(disconnected,
                   _glfw.monitors,
                   _glfw.monitorCount * sizeof(_GLFWmonitor*));
        }

        for (int i = 0; i < sr->noutput; i++)
        {
            int j, type, widthMM, heightMM;

            XRROutputInfo* oi = XRRGetOutputInfo(_glfw.x11.display, sr, sr->outputs[i]);
            if (oi->connection != RR_Connected || oi->crtc == None)
            {
                XRRFreeOutputInfo(oi);
                continue;
            }

            for (j = 0; j < disconnectedCount; j++)
            {
                if (disconnected[j] &&
                    disconnected[j]->x11.output == sr->outputs[i])
                {
                    disconnected[j] = ((void*)0);
                    break;
                }
            }

            if (j < disconnectedCount)
            {
                XRRFreeOutputInfo(oi);
                continue;
            }

            XRRCrtcInfo* ci = XRRGetCrtcInfo(_glfw.x11.display, sr, oi->crtc);
            if (ci->rotation == RR_Rotate_90 || ci->rotation == RR_Rotate_270)
            {
                widthMM = oi->mm_height;
                heightMM = oi->mm_width;
            }
            else
            {
                widthMM = oi->mm_width;
                heightMM = oi->mm_height;
            }

            if (widthMM <= 0 || heightMM <= 0)
            {




                widthMM = (int) (ci->width * 25.4f / 96.f);
                heightMM = (int) (ci->height * 25.4f / 96.f);
            }

            _GLFWmonitor* monitor = _glfwAllocMonitor(oi->name, widthMM, heightMM);
            monitor->x11.output = sr->outputs[i];
            monitor->x11.crtc = oi->crtc;

            for (j = 0; j < screenCount; j++)
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

            _glfwInputMonitor(monitor, GLFW_CONNECTED, type);

            XRRFreeOutputInfo(oi);
            XRRFreeCrtcInfo(ci);
        }

        XRRFreeScreenResources(sr);

        if (screens)
            XFree(screens);

        for (int i = 0; i < disconnectedCount; i++)
        {
            if (disconnected[i])
                _glfwInputMonitor(disconnected[i], GLFW_DISCONNECTED, 0);
        }

        free(disconnected);
    }
    else
    {
        const int widthMM = DisplayWidthMM(_glfw.x11.display, _glfw.x11.screen);
        const int heightMM = DisplayHeightMM(_glfw.x11.display, _glfw.x11.screen);

        _glfwInputMonitor(_glfwAllocMonitor("Display", widthMM, heightMM),
                          GLFW_CONNECTED,
                          _GLFW_INSERT_FIRST);
    }
}
