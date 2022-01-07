
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ helperWindowHandle; int CLIPBOARD; int display; int clipboardString; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int CurrentTime ;
 int GLFW_PLATFORM_ERROR ;
 scalar_t__ XGetSelectionOwner (int ,int ) ;
 int XSetSelectionOwner (int ,int ,scalar_t__,int ) ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int _glfw_strdup (char const*) ;
 int free (int ) ;

void _glfwPlatformSetClipboardString(const char* string)
{
    free(_glfw.x11.clipboardString);
    _glfw.x11.clipboardString = _glfw_strdup(string);

    XSetSelectionOwner(_glfw.x11.display,
                       _glfw.x11.CLIPBOARD,
                       _glfw.x11.helperWindowHandle,
                       CurrentTime);

    if (XGetSelectionOwner(_glfw.x11.display, _glfw.x11.CLIPBOARD) !=
        _glfw.x11.helperWindowHandle)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "X11: Failed to become owner of clipboard selection");
    }
}
