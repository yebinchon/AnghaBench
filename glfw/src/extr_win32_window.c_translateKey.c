
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_5__ {int* keycodes; } ;
struct TYPE_7__ {TYPE_1__ win32; } ;
struct TYPE_6__ {scalar_t__ message; scalar_t__ wParam; scalar_t__ time; int lParam; } ;
typedef TYPE_2__ MSG ;
typedef int LPARAM ;
typedef scalar_t__ DWORD ;


 int GLFW_KEY_LEFT_CONTROL ;
 int GLFW_KEY_RIGHT_CONTROL ;
 scalar_t__ GetMessageTime () ;
 int HIWORD (int ) ;
 int KF_EXTENDED ;
 int PM_NOREMOVE ;
 scalar_t__ PeekMessageW (TYPE_2__*,int *,int ,int ,int ) ;
 scalar_t__ VK_CONTROL ;
 scalar_t__ VK_MENU ;
 scalar_t__ VK_PROCESSKEY ;
 scalar_t__ WM_KEYDOWN ;
 scalar_t__ WM_KEYUP ;
 scalar_t__ WM_SYSKEYDOWN ;
 scalar_t__ WM_SYSKEYUP ;
 int _GLFW_KEY_INVALID ;
 TYPE_3__ _glfw ;

__attribute__((used)) static int translateKey(WPARAM wParam, LPARAM lParam)
{

    if (wParam == VK_CONTROL)
    {
        MSG next;
        DWORD time;


        if (HIWORD(lParam) & KF_EXTENDED)
            return GLFW_KEY_RIGHT_CONTROL;




        time = GetMessageTime();

        if (PeekMessageW(&next, ((void*)0), 0, 0, PM_NOREMOVE))
        {
            if (next.message == WM_KEYDOWN ||
                next.message == WM_SYSKEYDOWN ||
                next.message == WM_KEYUP ||
                next.message == WM_SYSKEYUP)
            {
                if (next.wParam == VK_MENU &&
                    (HIWORD(next.lParam) & KF_EXTENDED) &&
                    next.time == time)
                {

                    return _GLFW_KEY_INVALID;
                }
            }
        }

        return GLFW_KEY_LEFT_CONTROL;
    }

    if (wParam == VK_PROCESSKEY)
    {


        return _GLFW_KEY_INVALID;
    }

    return _glfw.win32.keycodes[HIWORD(lParam) & 0x1FF];
}
