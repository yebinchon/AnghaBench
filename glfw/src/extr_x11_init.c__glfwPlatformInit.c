
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * im; int display; int hiddenCursorHandle; int helperWindowHandle; int contentScaleY; int contentScaleX; int context; int screen; int root; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int DefaultScreen (int ) ;
 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 int LC_CTYPE ;
 int RootWindow (int ,int ) ;
 int XCloseIM (int *) ;
 int XInitThreads () ;
 int XOpenDisplay (int *) ;
 int * XOpenIM (int ,int ,int *,int *) ;
 int XSetLocaleModifiers (char*) ;
 scalar_t__ XSupportsLocale () ;
 int XUniqueContext () ;
 int XrmInitialize () ;
 TYPE_2__ _glfw ;
 int _glfwInitJoysticksLinux () ;
 int _glfwInitTimerPOSIX () ;
 int _glfwInputError (int ,char*,...) ;
 int _glfwPollMonitorsX11 () ;
 int createHelperWindow () ;
 int createHiddenCursor () ;
 int getSystemContentScale (int *,int *) ;
 char* getenv (char*) ;
 int hasUsableInputMethodStyle () ;
 int initExtensions () ;
 int setlocale (int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;

int _glfwPlatformInit(void)
{






    if (strcmp(setlocale(LC_CTYPE, ((void*)0)), "C") == 0)
        setlocale(LC_CTYPE, "");


    XInitThreads();
    XrmInitialize();

    _glfw.x11.display = XOpenDisplay(((void*)0));
    if (!_glfw.x11.display)
    {
        const char* display = getenv("DISPLAY");
        if (display)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: Failed to open display %s", display);
        }
        else
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: The DISPLAY environment variable is missing");
        }

        return GLFW_FALSE;
    }

    _glfw.x11.screen = DefaultScreen(_glfw.x11.display);
    _glfw.x11.root = RootWindow(_glfw.x11.display, _glfw.x11.screen);
    _glfw.x11.context = XUniqueContext();

    getSystemContentScale(&_glfw.x11.contentScaleX, &_glfw.x11.contentScaleY);

    if (!initExtensions())
        return GLFW_FALSE;

    _glfw.x11.helperWindowHandle = createHelperWindow();
    _glfw.x11.hiddenCursorHandle = createHiddenCursor();

    if (XSupportsLocale())
    {
        XSetLocaleModifiers("");

        _glfw.x11.im = XOpenIM(_glfw.x11.display, 0, ((void*)0), ((void*)0));
        if (_glfw.x11.im)
        {
            if (!hasUsableInputMethodStyle())
            {
                XCloseIM(_glfw.x11.im);
                _glfw.x11.im = ((void*)0);
            }
        }
    }


    if (!_glfwInitJoysticksLinux())
        return GLFW_FALSE;


    _glfwInitTimerPOSIX();

    _glfwPollMonitorsX11();
    return GLFW_TRUE;
}
