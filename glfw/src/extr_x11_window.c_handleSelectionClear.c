
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ selection; } ;
struct TYPE_8__ {TYPE_1__ xselectionclear; } ;
typedef TYPE_3__ XEvent ;
struct TYPE_7__ {scalar_t__ PRIMARY; int * clipboardString; int * primarySelectionString; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;


 TYPE_5__ _glfw ;
 int free (int *) ;

__attribute__((used)) static void handleSelectionClear(XEvent* event)
{
    if (event->xselectionclear.selection == _glfw.x11.PRIMARY)
    {
        free(_glfw.x11.primarySelectionString);
        _glfw.x11.primarySelectionString = ((void*)0);
    }
    else
    {
        free(_glfw.x11.clipboardString);
        _glfw.x11.clipboardString = ((void*)0);
    }
}
