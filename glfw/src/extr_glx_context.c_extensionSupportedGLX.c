
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int screen; int display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 TYPE_2__ _glfw ;
 scalar_t__ _glfwStringInExtensionString (char const*,char const*) ;
 char* glXQueryExtensionsString (int ,int ) ;

__attribute__((used)) static int extensionSupportedGLX(const char* extension)
{
    const char* extensions =
        glXQueryExtensionsString(_glfw.x11.display, _glfw.x11.screen);
    if (extensions)
    {
        if (_glfwStringInExtensionString(extension, extensions))
            return GLFW_TRUE;
    }

    return GLFW_FALSE;
}
