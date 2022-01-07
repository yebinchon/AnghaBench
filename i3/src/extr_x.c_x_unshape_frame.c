
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_shape_sk_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ frame; int window; } ;
typedef TYPE_2__ Con ;


 int XCB_PIXMAP_NONE ;
 int XCB_SHAPE_SO_SET ;
 int assert (int ) ;
 int conn ;
 int xcb_shape_mask (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void x_unshape_frame(Con *con, xcb_shape_sk_t shape_kind) {
    assert(con->window);

    xcb_shape_mask(conn, XCB_SHAPE_SO_SET, shape_kind, con->frame.id, 0, 0, XCB_PIXMAP_NONE);
}
