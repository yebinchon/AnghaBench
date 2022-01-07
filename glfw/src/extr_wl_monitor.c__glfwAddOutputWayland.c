
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_output {int dummy; } ;
struct TYPE_8__ {int scale; int name; struct wl_output* output; } ;
struct TYPE_10__ {TYPE_1__ wl; } ;
typedef TYPE_3__ _GLFWmonitor ;
struct TYPE_9__ {int registry; } ;
struct TYPE_11__ {TYPE_2__ wl; } ;


 int GLFW_PLATFORM_ERROR ;
 TYPE_7__ _glfw ;
 TYPE_3__* _glfwAllocMonitor (int *,int ,int ) ;
 int _glfwFreeMonitor (TYPE_3__*) ;
 int _glfwInputError (int ,char*) ;
 int outputListener ;
 int wl_output_add_listener (struct wl_output*,int *,TYPE_3__*) ;
 int wl_output_interface ;
 struct wl_output* wl_registry_bind (int ,int,int *,int) ;

void _glfwAddOutputWayland(uint32_t name, uint32_t version)
{
    _GLFWmonitor *monitor;
    struct wl_output *output;

    if (version < 2)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Unsupported output interface version");
        return;
    }


    monitor = _glfwAllocMonitor(((void*)0), 0, 0);

    output = wl_registry_bind(_glfw.wl.registry,
                              name,
                              &wl_output_interface,
                              2);
    if (!output)
    {
        _glfwFreeMonitor(monitor);
        return;
    }

    monitor->wl.scale = 1;
    monitor->wl.output = output;
    monitor->wl.name = name;

    wl_output_add_listener(output, &outputListener, monitor);
}
