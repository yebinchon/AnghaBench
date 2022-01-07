
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int handle; } ;
struct TYPE_11__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_12__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_3__ RECT ;
typedef int POINT ;
typedef int DWORD ;


 int AdjustWindowRectEx (TYPE_3__*,int,int ,int ) ;
 int AdjustWindowRectExForDpi (TYPE_3__*,int,int ,int ,int ) ;
 int ClientToScreen (int ,int *) ;
 int FALSE ;
 int GWL_STYLE ;
 int GetClientRect (int ,TYPE_3__*) ;
 int GetDpiForWindow (int ) ;
 int GetWindowLongW (int ,int ) ;
 int HWND_TOP ;
 int SWP_FRAMECHANGED ;
 int SWP_NOACTIVATE ;
 int SWP_NOZORDER ;
 int SetWindowLongW (int ,int ,int) ;
 int SetWindowPos (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_POPUP ;
 scalar_t__ _glfwIsWindows10AnniversaryUpdateOrGreaterWin32 () ;
 int getWindowExStyle (TYPE_2__ const*) ;
 int getWindowStyle (TYPE_2__ const*) ;

__attribute__((used)) static void updateWindowStyles(const _GLFWwindow* window)
{
    RECT rect;
    DWORD style = GetWindowLongW(window->win32.handle, GWL_STYLE);
    style &= ~(WS_OVERLAPPEDWINDOW | WS_POPUP);
    style |= getWindowStyle(window);

    GetClientRect(window->win32.handle, &rect);

    if (_glfwIsWindows10AnniversaryUpdateOrGreaterWin32())
    {
        AdjustWindowRectExForDpi(&rect, style, FALSE,
                                 getWindowExStyle(window),
                                 GetDpiForWindow(window->win32.handle));
    }
    else
        AdjustWindowRectEx(&rect, style, FALSE, getWindowExStyle(window));

    ClientToScreen(window->win32.handle, (POINT*) &rect.left);
    ClientToScreen(window->win32.handle, (POINT*) &rect.right);
    SetWindowLongW(window->win32.handle, GWL_STYLE, style);
    SetWindowPos(window->win32.handle, HWND_TOP,
                 rect.left, rect.top,
                 rect.right - rect.left, rect.bottom - rect.top,
                 SWP_FRAMECHANGED | SWP_NOACTIVATE | SWP_NOZORDER);
}
