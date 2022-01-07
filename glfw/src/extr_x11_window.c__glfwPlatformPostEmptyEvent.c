
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int format; int message_type; int window; } ;
struct TYPE_8__ {TYPE_1__ xclient; int member_0; } ;
typedef TYPE_3__ XEvent ;
struct TYPE_7__ {int display; int helperWindowHandle; int NULL_; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;


 int ClientMessage ;
 int False ;
 int XFlush (int ) ;
 int XSendEvent (int ,int ,int ,int ,TYPE_3__*) ;
 TYPE_4__ _glfw ;

void _glfwPlatformPostEmptyEvent(void)
{
    XEvent event = { ClientMessage };
    event.xclient.window = _glfw.x11.helperWindowHandle;
    event.xclient.format = 32;
    event.xclient.message_type = _glfw.x11.NULL_;

    XSendEvent(_glfw.x11.display, _glfw.x11.helperWindowHandle, False, 0, &event);
    XFlush(_glfw.x11.display);
}
