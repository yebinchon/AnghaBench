
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int requestor; int time; int target; int selection; int display; } ;
typedef TYPE_3__ XSelectionRequestEvent ;
struct TYPE_9__ {int time; int target; int selection; int requestor; int display; int property; } ;
struct TYPE_12__ {TYPE_1__ xselection; int member_0; TYPE_3__ xselectionrequest; } ;
typedef TYPE_4__ XEvent ;
struct TYPE_10__ {int display; } ;
struct TYPE_13__ {TYPE_2__ x11; } ;


 int False ;
 int SelectionNotify ;
 int XSendEvent (int ,int ,int ,int ,TYPE_4__*) ;
 TYPE_7__ _glfw ;
 int writeTargetToProperty (TYPE_3__ const*) ;

__attribute__((used)) static void handleSelectionRequest(XEvent* event)
{
    const XSelectionRequestEvent* request = &event->xselectionrequest;

    XEvent reply = { SelectionNotify };
    reply.xselection.property = writeTargetToProperty(request);
    reply.xselection.display = request->display;
    reply.xselection.requestor = request->requestor;
    reply.xselection.selection = request->selection;
    reply.xselection.target = request->target;
    reply.xselection.time = request->time;

    XSendEvent(_glfw.x11.display, request->requestor, False, 0, &reply);
}
