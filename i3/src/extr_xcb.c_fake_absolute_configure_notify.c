
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int height; int width; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_4__ xcb_rectangle_t ;
struct TYPE_9__ {int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_12__ {int border_width; TYPE_3__* window; TYPE_2__ window_rect; TYPE_1__ rect; } ;
struct TYPE_10__ {int id; } ;
typedef TYPE_5__ Con ;


 int DLOG (char*,scalar_t__,scalar_t__,int ,int ) ;
 int conn ;
 int fake_configure_notify (int ,TYPE_4__,int ,int ) ;

void fake_absolute_configure_notify(Con *con) {
    xcb_rectangle_t absolute;
    if (con->window == ((void*)0))
        return;

    absolute.x = con->rect.x + con->window_rect.x;
    absolute.y = con->rect.y + con->window_rect.y;
    absolute.width = con->window_rect.width;
    absolute.height = con->window_rect.height;

    DLOG("fake rect = (%d, %d, %d, %d)\n", absolute.x, absolute.y, absolute.width, absolute.height);

    fake_configure_notify(conn, absolute, con->window->id, con->border_width);
}
