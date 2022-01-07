
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* clipboardString; int clipboardSize; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;
typedef int GLFWbool ;


 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;
 char* realloc (char*,int) ;

__attribute__((used)) static GLFWbool growClipboardString(void)
{
    char* clipboard = _glfw.wl.clipboardString;

    clipboard = realloc(clipboard, _glfw.wl.clipboardSize * 2);
    if (!clipboard)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Impossible to grow clipboard string");
        return GLFW_FALSE;
    }
    _glfw.wl.clipboardString = clipboard;
    _glfw.wl.clipboardSize = _glfw.wl.clipboardSize * 2;
    return GLFW_TRUE;
}
