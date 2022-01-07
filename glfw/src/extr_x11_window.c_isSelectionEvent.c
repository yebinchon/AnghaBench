
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int XPointer ;
struct TYPE_6__ {scalar_t__ window; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ xany; } ;
typedef TYPE_3__ XEvent ;
struct TYPE_7__ {scalar_t__ helperWindowHandle; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;
typedef int Display ;
typedef int Bool ;


 int False ;
 scalar_t__ SelectionClear ;
 scalar_t__ SelectionNotify ;
 scalar_t__ SelectionRequest ;
 TYPE_5__ _glfw ;

__attribute__((used)) static Bool isSelectionEvent(Display* display, XEvent* event, XPointer pointer)
{
    if (event->xany.window != _glfw.x11.helperWindowHandle)
        return False;

    return event->type == SelectionRequest ||
           event->type == SelectionNotify ||
           event->type == SelectionClear;
}
