
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ XPointer ;
struct TYPE_5__ {scalar_t__ requestor; scalar_t__ property; } ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ window; scalar_t__ atom; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ xselection; TYPE_2__ xproperty; } ;
typedef TYPE_3__ XEvent ;
typedef int Display ;
typedef int Bool ;


 scalar_t__ PropertyNewValue ;
 scalar_t__ PropertyNotify ;

__attribute__((used)) static Bool isSelPropNewValueNotify(Display* display, XEvent* event, XPointer pointer)
{
    XEvent* notification = (XEvent*) pointer;
    return event->type == PropertyNotify &&
           event->xproperty.state == PropertyNewValue &&
           event->xproperty.window == notification->xselection.requestor &&
           event->xproperty.atom == notification->xselection.property;
}
