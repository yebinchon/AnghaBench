
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dc; int interval; } ;
struct TYPE_6__ {TYPE_1__ wgl; } ;
struct TYPE_7__ {TYPE_2__ context; int monitor; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef scalar_t__ BOOL ;


 int DwmFlush () ;
 int DwmIsCompositionEnabled (scalar_t__*) ;
 scalar_t__ IsWindows8OrGreater () ;
 scalar_t__ IsWindowsVistaOrGreater () ;
 scalar_t__ SUCCEEDED (int ) ;
 int SwapBuffers (int ) ;
 int abs (int ) ;

__attribute__((used)) static void swapBuffersWGL(_GLFWwindow* window)
{
    if (!window->monitor)
    {
        if (IsWindowsVistaOrGreater())
        {

            BOOL enabled = IsWindows8OrGreater();


            if (enabled ||
                (SUCCEEDED(DwmIsCompositionEnabled(&enabled)) && enabled))
            {
                int count = abs(window->context.wgl.interval);
                while (count--)
                    DwmFlush();
            }
        }
    }

    SwapBuffers(window->context.wgl.dc);
}
