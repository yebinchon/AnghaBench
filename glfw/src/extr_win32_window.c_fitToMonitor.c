
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int mi ;
struct TYPE_11__ {int handle; } ;
struct TYPE_13__ {TYPE_3__ win32; TYPE_2__* monitor; } ;
typedef TYPE_5__ _GLFWwindow ;
struct TYPE_12__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_14__ {int member_0; TYPE_4__ rcMonitor; } ;
struct TYPE_9__ {int handle; } ;
struct TYPE_10__ {TYPE_1__ win32; } ;
typedef TYPE_6__ MONITORINFO ;


 int GetMonitorInfo (int ,TYPE_6__*) ;
 int HWND_TOPMOST ;
 int SWP_NOACTIVATE ;
 int SWP_NOCOPYBITS ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void fitToMonitor(_GLFWwindow* window)
{
    MONITORINFO mi = { sizeof(mi) };
    GetMonitorInfo(window->monitor->win32.handle, &mi);
    SetWindowPos(window->win32.handle, HWND_TOPMOST,
                 mi.rcMonitor.left,
                 mi.rcMonitor.top,
                 mi.rcMonitor.right - mi.rcMonitor.left,
                 mi.rcMonitor.bottom - mi.rcMonitor.top,
                 SWP_NOZORDER | SWP_NOACTIVATE | SWP_NOCOPYBITS);
}
