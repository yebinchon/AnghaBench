
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; double min_width; double min_height; int width_inc; int height_inc; double base_width; double base_height; scalar_t__ min_aspect_num; double min_aspect_den; scalar_t__ max_aspect_num; double max_aspect_den; int height; int width; int y; int x; int max_height; int max_width; } ;
typedef TYPE_1__ xcb_size_hints_t ;
typedef int xcb_get_property_reply_t ;
struct TYPE_9__ {int height; int width; int y; int x; } ;
typedef TYPE_2__ xcb_get_geometry_reply_t ;
struct TYPE_10__ {double min_width; double min_height; double max_width; double max_height; double width_increment; double height_increment; double base_width; double base_height; double min_aspect_ratio; double max_aspect_ratio; int id; } ;
typedef TYPE_3__ i3Window ;


 int ASSIGN_IF_CHANGED (double,double) ;
 scalar_t__ DBL_EPSILON ;
 int DLOG (char*,...) ;
 int XCB_ICCCM_SIZE_HINT_BASE_SIZE ;
 int XCB_ICCCM_SIZE_HINT_P_ASPECT ;
 int XCB_ICCCM_SIZE_HINT_P_MAX_SIZE ;
 int XCB_ICCCM_SIZE_HINT_P_MIN_SIZE ;
 int XCB_ICCCM_SIZE_HINT_P_POSITION ;
 int XCB_ICCCM_SIZE_HINT_P_RESIZE_INC ;
 int XCB_ICCCM_SIZE_HINT_P_SIZE ;
 int XCB_ICCCM_SIZE_HINT_US_POSITION ;
 int XCB_ICCCM_SIZE_HINT_US_SIZE ;
 int conn ;
 scalar_t__ fabs (double) ;
 int max (int ,int ) ;
 int xcb_icccm_get_wm_normal_hints_reply (int ,int ,TYPE_1__*,int *) ;
 int xcb_icccm_get_wm_normal_hints_unchecked (int ,int ) ;
 int xcb_icccm_get_wm_size_hints_from_reply (TYPE_1__*,int *) ;

bool window_update_normal_hints(i3Window *win, xcb_get_property_reply_t *reply, xcb_get_geometry_reply_t *geom) {
    bool changed = 0;
    xcb_size_hints_t size_hints;


    bool success;
    if (reply != ((void*)0)) {
        success = xcb_icccm_get_wm_size_hints_from_reply(&size_hints, reply);
    } else {
        success = xcb_icccm_get_wm_normal_hints_reply(conn, xcb_icccm_get_wm_normal_hints_unchecked(conn, win->id), &size_hints, ((void*)0));
    }
    if (!success) {
        DLOG("Could not get WM_NORMAL_HINTS\n");
        return 0;
    }
    if ((size_hints.flags & XCB_ICCCM_SIZE_HINT_P_MIN_SIZE)) {
        DLOG("Minimum size: %d (width) x %d (height)\n", size_hints.min_width, size_hints.min_height);

        do { if (win->min_width != size_hints.min_width) { win->min_width = size_hints.min_width; changed = 1; } } while (0);
        do { if (win->min_height != size_hints.min_height) { win->min_height = size_hints.min_height; changed = 1; } } while (0);
    }

    if ((size_hints.flags & XCB_ICCCM_SIZE_HINT_P_MAX_SIZE)) {
        DLOG("Maximum size: %d (width) x %d (height)\n", size_hints.max_width, size_hints.max_height);

        int max_width = max(0, size_hints.max_width);
        int max_height = max(0, size_hints.max_height);

        do { if (win->max_width != max_width) { win->max_width = max_width; changed = 1; } } while (0);
        do { if (win->max_height != max_height) { win->max_height = max_height; changed = 1; } } while (0);
    } else {
        DLOG("Clearing maximum size \n");

        do { if (win->max_width != 0) { win->max_width = 0; changed = 1; } } while (0);
        do { if (win->max_height != 0) { win->max_height = 0; changed = 1; } } while (0);
    }

    if ((size_hints.flags & XCB_ICCCM_SIZE_HINT_P_RESIZE_INC)) {
        DLOG("Size increments: %d (width) x %d (height)\n", size_hints.width_inc, size_hints.height_inc);

        if (size_hints.width_inc > 0 && size_hints.width_inc < 0xFFFF) {
            do { if (win->width_increment != size_hints.width_inc) { win->width_increment = size_hints.width_inc; changed = 1; } } while (0);
        } else {
            do { if (win->width_increment != 0) { win->width_increment = 0; changed = 1; } } while (0);
        }

        if (size_hints.height_inc > 0 && size_hints.height_inc < 0xFFFF) {
            do { if (win->height_increment != size_hints.height_inc) { win->height_increment = size_hints.height_inc; changed = 1; } } while (0);
        } else {
            do { if (win->height_increment != 0) { win->height_increment = 0; changed = 1; } } while (0);
        }
    } else {
        DLOG("Clearing size increments\n");

        do { if (win->width_increment != 0) { win->width_increment = 0; changed = 1; } } while (0);
        do { if (win->height_increment != 0) { win->height_increment = 0; changed = 1; } } while (0);
    }


    if (size_hints.flags & XCB_ICCCM_SIZE_HINT_BASE_SIZE &&
        (win->base_width >= 0) && (win->base_height >= 0)) {
        DLOG("Base size: %d (width) x %d (height)\n", size_hints.base_width, size_hints.base_height);

        do { if (win->base_width != size_hints.base_width) { win->base_width = size_hints.base_width; changed = 1; } } while (0);
        do { if (win->base_height != size_hints.base_height) { win->base_height = size_hints.base_height; changed = 1; } } while (0);
    } else {
        DLOG("Clearing base size\n");

        do { if (win->base_width != 0) { win->base_width = 0; changed = 1; } } while (0);
        do { if (win->base_height != 0) { win->base_height = 0; changed = 1; } } while (0);
    }

    if (geom != ((void*)0) &&
        (size_hints.flags & XCB_ICCCM_SIZE_HINT_US_POSITION || size_hints.flags & XCB_ICCCM_SIZE_HINT_P_POSITION) &&
        (size_hints.flags & XCB_ICCCM_SIZE_HINT_US_SIZE || size_hints.flags & XCB_ICCCM_SIZE_HINT_P_SIZE)) {
        DLOG("Setting geometry x=%d y=%d w=%d h=%d\n", size_hints.x, size_hints.y, size_hints.width, size_hints.height);
        geom->x = size_hints.x;
        geom->y = size_hints.y;
        geom->width = size_hints.width;
        geom->height = size_hints.height;
    }


    if (size_hints.flags & XCB_ICCCM_SIZE_HINT_P_ASPECT &&
        (size_hints.min_aspect_num >= 0) && (size_hints.min_aspect_den > 0) &&
        (size_hints.max_aspect_num >= 0) && (size_hints.max_aspect_den > 0)) {

        double min_aspect = (double)size_hints.min_aspect_num / size_hints.min_aspect_den;
        double max_aspect = (double)size_hints.max_aspect_num / size_hints.max_aspect_den;
        DLOG("Aspect ratio set: minimum %f, maximum %f\n", min_aspect, max_aspect);
        if (fabs(win->min_aspect_ratio - min_aspect) > DBL_EPSILON) {
            win->min_aspect_ratio = min_aspect;
            changed = 1;
        }
        if (fabs(win->max_aspect_ratio - max_aspect) > DBL_EPSILON) {
            win->max_aspect_ratio = max_aspect;
            changed = 1;
        }
    } else {
        DLOG("Clearing aspect ratios\n");

        do { if (win->min_aspect_ratio != 0.0) { win->min_aspect_ratio = 0.0; changed = 1; } } while (0);
        do { if (win->max_aspect_ratio != 0.0) { win->max_aspect_ratio = 0.0; changed = 1; } } while (0);
    }

    return changed;
}
