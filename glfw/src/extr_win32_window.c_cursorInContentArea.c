
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ handle; } ;
struct TYPE_8__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_9__ {int right; int left; } ;
typedef TYPE_3__ RECT ;
typedef int POINT ;
typedef int GLFWbool ;


 int ClientToScreen (scalar_t__,int *) ;
 int GLFW_FALSE ;
 int GetClientRect (scalar_t__,TYPE_3__*) ;
 int GetCursorPos (int *) ;
 int PtInRect (TYPE_3__*,int ) ;
 scalar_t__ WindowFromPoint (int ) ;

__attribute__((used)) static GLFWbool cursorInContentArea(_GLFWwindow* window)
{
    RECT area;
    POINT pos;

    if (!GetCursorPos(&pos))
        return GLFW_FALSE;

    if (WindowFromPoint(pos) != window->win32.handle)
        return GLFW_FALSE;

    GetClientRect(window->win32.handle, &area);
    ClientToScreen(window->win32.handle, (POINT*) &area.left);
    ClientToScreen(window->win32.handle, (POINT*) &area.right);

    return PtInRect(&area, pos);
}
