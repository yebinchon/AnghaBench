
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xcb_shape_sk_t ;
typedef int xcb_rectangle_t ;
struct TYPE_10__ {int id; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_9__ {TYPE_1__ frame; TYPE_6__* window; scalar_t__ border_width; TYPE_2__ window_rect; } ;
typedef TYPE_3__ Con ;


 int XCB_CLIP_ORDERING_UNSORTED ;
 int XCB_SHAPE_SO_SET ;
 int XCB_SHAPE_SO_UNION ;
 int assert (TYPE_6__*) ;
 int conn ;
 size_t x_get_border_rectangles (TYPE_3__*,int *) ;
 int xcb_shape_combine (int ,int ,int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 int xcb_shape_rectangles (int ,int ,int ,int ,int ,int ,int ,size_t,int *) ;

__attribute__((used)) static void x_shape_frame(Con *con, xcb_shape_sk_t shape_kind) {
    assert(con->window);

    xcb_shape_combine(conn, XCB_SHAPE_SO_SET, shape_kind, shape_kind,
                      con->frame.id,
                      con->window_rect.x + con->border_width,
                      con->window_rect.y + con->border_width,
                      con->window->id);
    xcb_rectangle_t rectangles[4];
    size_t rectangles_count = x_get_border_rectangles(con, rectangles);
    if (rectangles_count) {
        xcb_shape_rectangles(conn, XCB_SHAPE_SO_UNION, shape_kind,
                             XCB_CLIP_ORDERING_UNSORTED, con->frame.id,
                             0, 0, rectangles_count, rectangles);
    }
}
