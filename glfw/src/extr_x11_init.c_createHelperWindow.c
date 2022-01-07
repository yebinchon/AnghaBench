
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int event_mask; } ;
typedef TYPE_2__ XSetWindowAttributes ;
typedef int Window ;
struct TYPE_5__ {int screen; int display; int root; } ;
struct TYPE_7__ {TYPE_1__ x11; } ;


 int CWEventMask ;
 int DefaultVisual (int ,int ) ;
 int InputOnly ;
 int PropertyChangeMask ;
 int XCreateWindow (int ,int ,int ,int ,int,int,int ,int ,int ,int ,int ,TYPE_2__*) ;
 TYPE_3__ _glfw ;

__attribute__((used)) static Window createHelperWindow(void)
{
    XSetWindowAttributes wa;
    wa.event_mask = PropertyChangeMask;

    return XCreateWindow(_glfw.x11.display, _glfw.x11.root,
                         0, 0, 1, 1, 0, 0,
                         InputOnly,
                         DefaultVisual(_glfw.x11.display, _glfw.x11.screen),
                         CWEventMask, &wa);
}
