
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * idleInhibitor; int surface; } ;
struct TYPE_8__ {TYPE_1__ wl; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {scalar_t__ idleInhibitManager; } ;
struct TYPE_9__ {TYPE_2__ wl; } ;
typedef scalar_t__ GLFWbool ;


 int GLFW_PLATFORM_ERROR ;
 TYPE_5__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int * zwp_idle_inhibit_manager_v1_create_inhibitor (scalar_t__,int ) ;
 int zwp_idle_inhibitor_v1_destroy (int *) ;

__attribute__((used)) static void setIdleInhibitor(_GLFWwindow* window, GLFWbool enable)
{
    if (enable && !window->wl.idleInhibitor && _glfw.wl.idleInhibitManager)
    {
        window->wl.idleInhibitor =
            zwp_idle_inhibit_manager_v1_create_inhibitor(
                _glfw.wl.idleInhibitManager, window->wl.surface);
        if (!window->wl.idleInhibitor)
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Wayland: Idle inhibitor creation failed");
    }
    else if (!enable && window->wl.idleInhibitor)
    {
        zwp_idle_inhibitor_v1_destroy(window->wl.idleInhibitor);
        window->wl.idleInhibitor = ((void*)0);
    }
}
