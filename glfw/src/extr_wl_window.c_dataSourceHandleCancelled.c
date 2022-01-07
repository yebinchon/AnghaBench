
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl_data_source {int dummy; } ;
struct TYPE_3__ {struct wl_data_source* dataSource; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 int GLFW_PLATFORM_ERROR ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int wl_data_source_destroy (struct wl_data_source*) ;

__attribute__((used)) static void dataSourceHandleCancelled(void* data,
                                      struct wl_data_source* dataSource)
{
    wl_data_source_destroy(dataSource);

    if (_glfw.wl.dataSource != dataSource)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Unknown clipboard data source");
        return;
    }

    _glfw.wl.dataSource = ((void*)0);
}
