
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int member_2; int member_3; int right; int left; int bottom; int top; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int DWORD ;


 int AdjustWindowRectEx (TYPE_1__*,int ,int ,int ) ;
 int AdjustWindowRectExForDpi (TYPE_1__*,int ,int ,int ,int ) ;
 int FALSE ;
 scalar_t__ _glfwIsWindows10AnniversaryUpdateOrGreaterWin32 () ;

__attribute__((used)) static void getFullWindowSize(DWORD style, DWORD exStyle,
                              int contentWidth, int contentHeight,
                              int* fullWidth, int* fullHeight,
                              UINT dpi)
{
    RECT rect = { 0, 0, contentWidth, contentHeight };

    if (_glfwIsWindows10AnniversaryUpdateOrGreaterWin32())
        AdjustWindowRectExForDpi(&rect, style, FALSE, exStyle, dpi);
    else
        AdjustWindowRectEx(&rect, style, FALSE, exStyle);

    *fullWidth = rect.right - rect.left;
    *fullHeight = rect.bottom - rect.top;
}
