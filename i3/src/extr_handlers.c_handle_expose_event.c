
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int window; } ;
typedef TYPE_2__ xcb_expose_event_t ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_8__ {TYPE_1__ rect; int frame; int frame_buffer; } ;
typedef TYPE_3__ Con ;


 int DLOG (char*,int ) ;
 int LOG (char*) ;
 TYPE_3__* con_by_frame_id (int ) ;
 int conn ;
 int draw_util_copy_surface (int *,int *,int ,int ,int ,int ,int ,int ) ;
 int xcb_flush (int ) ;

__attribute__((used)) static void handle_expose_event(xcb_expose_event_t *event) {
    Con *parent;

    DLOG("window = %08x\n", event->window);

    if ((parent = con_by_frame_id(event->window)) == ((void*)0)) {
        LOG("expose event for unknown window, ignoring\n");
        return;
    }



    draw_util_copy_surface(&(parent->frame_buffer), &(parent->frame),
                           0, 0, 0, 0, parent->rect.width, parent->rect.height);
    xcb_flush(conn);
}
