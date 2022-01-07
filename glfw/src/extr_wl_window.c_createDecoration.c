
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wl_surface {int dummy; } ;
struct wl_region {int dummy; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_6__ {int surface; int viewport; int subsurface; } ;
typedef TYPE_2__ _GLFWdecorationWayland ;
struct TYPE_5__ {int compositor; int viewporter; int subcompositor; } ;
struct TYPE_7__ {TYPE_1__ wl; } ;
typedef scalar_t__ GLFWbool ;


 TYPE_4__ _glfw ;
 struct wl_region* wl_compositor_create_region (int ) ;
 int wl_compositor_create_surface (int ) ;
 int wl_region_add (struct wl_region*,int ,int ,int,int) ;
 int wl_region_destroy (struct wl_region*) ;
 int wl_subcompositor_get_subsurface (int ,int ,struct wl_surface*) ;
 int wl_subsurface_set_position (int ,int,int) ;
 int wl_surface_attach (int ,struct wl_buffer*,int ,int ) ;
 int wl_surface_commit (int ) ;
 int wl_surface_set_opaque_region (int ,struct wl_region*) ;
 int wp_viewport_set_destination (int ,int,int) ;
 int wp_viewporter_get_viewport (int ,int ) ;

__attribute__((used)) static void createDecoration(_GLFWdecorationWayland* decoration,
                             struct wl_surface* parent,
                             struct wl_buffer* buffer, GLFWbool opaque,
                             int x, int y,
                             int width, int height)
{
    struct wl_region* region;

    decoration->surface = wl_compositor_create_surface(_glfw.wl.compositor);
    decoration->subsurface =
        wl_subcompositor_get_subsurface(_glfw.wl.subcompositor,
                                        decoration->surface, parent);
    wl_subsurface_set_position(decoration->subsurface, x, y);
    decoration->viewport = wp_viewporter_get_viewport(_glfw.wl.viewporter,
                                                      decoration->surface);
    wp_viewport_set_destination(decoration->viewport, width, height);
    wl_surface_attach(decoration->surface, buffer, 0, 0);

    if (opaque)
    {
        region = wl_compositor_create_region(_glfw.wl.compositor);
        wl_region_add(region, 0, 0, width, height);
        wl_surface_set_opaque_region(decoration->surface, region);
        wl_surface_commit(decoration->surface);
        wl_region_destroy(region);
    }
    else
        wl_surface_commit(decoration->surface);
}
