
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * viewport; int * subsurface; int * surface; } ;
typedef TYPE_1__ _GLFWdecorationWayland ;


 int wl_subsurface_destroy (int *) ;
 int wl_surface_destroy (int *) ;
 int wp_viewport_destroy (int *) ;

__attribute__((used)) static void destroyDecoration(_GLFWdecorationWayland* decoration)
{
    if (decoration->surface)
        wl_surface_destroy(decoration->surface);
    if (decoration->subsurface)
        wl_subsurface_destroy(decoration->subsurface);
    if (decoration->viewport)
        wp_viewport_destroy(decoration->viewport);
    decoration->surface = ((void*)0);
    decoration->subsurface = ((void*)0);
    decoration->viewport = ((void*)0);
}
