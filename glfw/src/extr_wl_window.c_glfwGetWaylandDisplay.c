
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl_display {int dummy; } ;
struct TYPE_3__ {struct wl_display* display; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_2__ _glfw ;

struct wl_display* glfwGetWaylandDisplay(void)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));
    return _glfw.wl.display;
}
