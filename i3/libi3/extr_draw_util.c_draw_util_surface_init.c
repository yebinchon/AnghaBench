
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_void_cookie_t ;
typedef int xcb_visualtype_t ;
struct TYPE_5__ {int error_code; } ;
typedef TYPE_1__ xcb_generic_error_t ;
typedef int xcb_drawable_t ;
typedef int xcb_connection_t ;
struct TYPE_6__ {int width; int height; int surface; int cr; int * visual_type; int id; int gc; } ;
typedef TYPE_2__ surface_t ;


 int ELOG (char*,int ) ;
 int cairo_create (int ) ;
 int cairo_xcb_surface_create (int *,int ,int *,int,int) ;
 int * visual_type ;
 int xcb_create_gc_checked (int *,int ,int ,int ,int *) ;
 int xcb_generate_id (int *) ;
 TYPE_1__* xcb_request_check (int *,int ) ;

void draw_util_surface_init(xcb_connection_t *conn, surface_t *surface, xcb_drawable_t drawable,
                            xcb_visualtype_t *visual, int width, int height) {
    surface->id = drawable;
    surface->visual_type = ((visual == ((void*)0)) ? visual_type : visual);
    surface->width = width;
    surface->height = height;

    surface->gc = xcb_generate_id(conn);
    xcb_void_cookie_t gc_cookie = xcb_create_gc_checked(conn, surface->gc, surface->id, 0, ((void*)0));

    xcb_generic_error_t *error = xcb_request_check(conn, gc_cookie);
    if (error != ((void*)0)) {
        ELOG("Could not create graphical context. Error code: %d. Please report this bug.\n", error->error_code);
    }

    surface->surface = cairo_xcb_surface_create(conn, surface->id, surface->visual_type, width, height);
    surface->cr = cairo_create(surface->surface);
}
