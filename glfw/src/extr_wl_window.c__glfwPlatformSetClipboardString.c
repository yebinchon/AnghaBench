
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int serial; int * dataSource; int dataDevice; int * clipboardSendString; int dataDeviceManager; int clipboardSendSize; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 int GLFW_PLATFORM_ERROR ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int dataSourceListener ;
 int free (int *) ;
 int * strdup (char const*) ;
 int strlen (char const*) ;
 int * wl_data_device_manager_create_data_source (int ) ;
 int wl_data_device_set_selection (int ,int *,int ) ;
 int wl_data_source_add_listener (int *,int *,int *) ;
 int wl_data_source_destroy (int *) ;
 int wl_data_source_offer (int *,char*) ;

void _glfwPlatformSetClipboardString(const char* string)
{
    if (_glfw.wl.dataSource)
    {
        wl_data_source_destroy(_glfw.wl.dataSource);
        _glfw.wl.dataSource = ((void*)0);
    }

    if (_glfw.wl.clipboardSendString)
    {
        free(_glfw.wl.clipboardSendString);
        _glfw.wl.clipboardSendString = ((void*)0);
    }

    _glfw.wl.clipboardSendString = strdup(string);
    if (!_glfw.wl.clipboardSendString)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Impossible to allocate clipboard string");
        return;
    }
    _glfw.wl.clipboardSendSize = strlen(string);
    _glfw.wl.dataSource =
        wl_data_device_manager_create_data_source(_glfw.wl.dataDeviceManager);
    if (!_glfw.wl.dataSource)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Impossible to create clipboard source");
        free(_glfw.wl.clipboardSendString);
        return;
    }
    wl_data_source_add_listener(_glfw.wl.dataSource,
                                &dataSourceListener,
                                ((void*)0));
    wl_data_source_offer(_glfw.wl.dataSource, "text/plain;charset=utf-8");
    wl_data_device_set_selection(_glfw.wl.dataDevice,
                                 _glfw.wl.dataSource,
                                 _glfw.wl.serial);
}
