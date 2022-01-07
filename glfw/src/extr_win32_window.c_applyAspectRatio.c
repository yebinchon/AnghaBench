
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int handle; } ;
struct TYPE_9__ {TYPE_1__ win32; scalar_t__ denom; scalar_t__ numer; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int UINT ;
struct TYPE_10__ {int bottom; int top; int right; int left; } ;
typedef TYPE_3__ RECT ;


 int GetDpiForWindow (int ) ;
 int USER_DEFAULT_SCREEN_DPI ;
 int WMSZ_BOTTOM ;
 int WMSZ_BOTTOMLEFT ;
 int WMSZ_BOTTOMRIGHT ;
 int WMSZ_LEFT ;
 int WMSZ_RIGHT ;
 int WMSZ_TOP ;
 int WMSZ_TOPLEFT ;
 int WMSZ_TOPRIGHT ;
 scalar_t__ _glfwIsWindows10AnniversaryUpdateOrGreaterWin32 () ;
 int getFullWindowSize (int ,int ,int ,int ,int*,int*,int ) ;
 int getWindowExStyle (TYPE_2__*) ;
 int getWindowStyle (TYPE_2__*) ;

__attribute__((used)) static void applyAspectRatio(_GLFWwindow* window, int edge, RECT* area)
{
    int xoff, yoff;
    UINT dpi = USER_DEFAULT_SCREEN_DPI;
    const float ratio = (float) window->numer / (float) window->denom;

    if (_glfwIsWindows10AnniversaryUpdateOrGreaterWin32())
        dpi = GetDpiForWindow(window->win32.handle);

    getFullWindowSize(getWindowStyle(window), getWindowExStyle(window),
                      0, 0, &xoff, &yoff, dpi);

    if (edge == WMSZ_LEFT || edge == WMSZ_BOTTOMLEFT ||
        edge == WMSZ_RIGHT || edge == WMSZ_BOTTOMRIGHT)
    {
        area->bottom = area->top + yoff +
            (int) ((area->right - area->left - xoff) / ratio);
    }
    else if (edge == WMSZ_TOPLEFT || edge == WMSZ_TOPRIGHT)
    {
        area->top = area->bottom - yoff -
            (int) ((area->right - area->left - xoff) / ratio);
    }
    else if (edge == WMSZ_TOP || edge == WMSZ_BOTTOM)
    {
        area->right = area->left + xoff +
            (int) ((area->bottom - area->top - yoff) * ratio);
    }
}
