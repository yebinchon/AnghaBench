
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int event_x; int event_y; } ;
typedef TYPE_2__ xcb_button_press_event_t ;
struct TYPE_8__ {int width; int height; } ;
struct TYPE_10__ {TYPE_1__ rect; } ;
typedef TYPE_3__ Con ;


 int BORDER_BOTTOM ;
 int BORDER_LEFT ;
 int BORDER_RIGHT ;
 int BORDER_TOP ;
 int DLOG (char*,int,int,int,int) ;
 int tiling_resize_for_border (TYPE_3__*,int ,TYPE_2__*,int) ;

__attribute__((used)) static bool floating_mod_on_tiled_client(Con *con, xcb_button_press_event_t *event) {



    int to_right = con->rect.width - event->event_x,
        to_left = event->event_x,
        to_top = event->event_y,
        to_bottom = con->rect.height - event->event_y;

    DLOG("click was %d px to the right, %d px to the left, %d px to top, %d px to bottom\n",
         to_right, to_left, to_top, to_bottom);

    if (to_right < to_left &&
        to_right < to_top &&
        to_right < to_bottom)
        return tiling_resize_for_border(con, BORDER_RIGHT, event, 0);

    if (to_left < to_right &&
        to_left < to_top &&
        to_left < to_bottom)
        return tiling_resize_for_border(con, BORDER_LEFT, event, 0);

    if (to_top < to_right &&
        to_top < to_left &&
        to_top < to_bottom)
        return tiling_resize_for_border(con, BORDER_TOP, event, 0);

    if (to_bottom < to_right &&
        to_bottom < to_left &&
        to_bottom < to_top)
        return tiling_resize_for_border(con, BORDER_BOTTOM, event, 0);

    return 0;
}
