
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int handle; } ;
struct TYPE_7__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {int dwFlags; int fEnable; int hRgnBlur; int member_0; } ;
typedef int LONG ;
typedef int HRGN ;
typedef TYPE_3__ DWM_BLURBEHIND ;
typedef scalar_t__ BOOL ;


 int CreateRectRgn (int ,int ,int,int) ;
 int DWM_BB_BLURREGION ;
 int DWM_BB_ENABLE ;
 int DeleteObject (int ) ;
 int DwmEnableBlurBehindWindow (int ,TYPE_3__*) ;
 int DwmIsCompositionEnabled (scalar_t__*) ;
 int GWL_EXSTYLE ;
 int GetWindowLongW (int ,int ) ;
 int IsWindowsVistaOrGreater () ;
 int LWA_COLORKEY ;
 int RDW_ERASE ;
 int RDW_FRAME ;
 int RDW_INVALIDATE ;
 int RGB (int,int ,int) ;
 int RedrawWindow (int ,int *,int *,int) ;
 scalar_t__ SUCCEEDED (int ) ;
 int SetLayeredWindowAttributes (int ,int ,int,int ) ;
 int SetWindowLongW (int ,int ,int ) ;
 int TRUE ;
 int WS_EX_LAYERED ;

__attribute__((used)) static void updateFramebufferTransparency(const _GLFWwindow* window)
{
    BOOL enabled;

    if (!IsWindowsVistaOrGreater())
        return;

    if (SUCCEEDED(DwmIsCompositionEnabled(&enabled)) && enabled)
    {
        HRGN region = CreateRectRgn(0, 0, -1, -1);
        DWM_BLURBEHIND bb = {0};
        bb.dwFlags = DWM_BB_ENABLE | DWM_BB_BLURREGION;
        bb.hRgnBlur = region;
        bb.fEnable = TRUE;

        if (SUCCEEDED(DwmEnableBlurBehindWindow(window->win32.handle, &bb)))
        {
            LONG exStyle = GetWindowLongW(window->win32.handle, GWL_EXSTYLE);
            exStyle |= WS_EX_LAYERED;
            SetWindowLongW(window->win32.handle, GWL_EXSTYLE, exStyle);




            SetLayeredWindowAttributes(window->win32.handle,
                                       RGB(255, 0, 255), 255, LWA_COLORKEY);
        }

        DeleteObject(region);
    }
    else
    {
        LONG exStyle = GetWindowLongW(window->win32.handle, GWL_EXSTYLE);
        exStyle &= ~WS_EX_LAYERED;
        SetWindowLongW(window->win32.handle, GWL_EXSTYLE, exStyle);
        RedrawWindow(window->win32.handle, ((void*)0), ((void*)0),
                     RDW_ERASE | RDW_INVALIDATE | RDW_FRAME);
    }
}
