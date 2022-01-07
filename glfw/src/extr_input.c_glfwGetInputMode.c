
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cursorMode; int stickyKeys; int stickyMouseButtons; int lockKeyMods; int rawMouseMotion; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int GLFWwindow ;



 int GLFW_INVALID_ENUM ;




 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;
 int _glfwInputError (int ,char*,int) ;
 int assert (int ) ;

int glfwGetInputMode(GLFWwindow* handle, int mode)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(window != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(0);

    switch (mode)
    {
        case 132:
            return window->cursorMode;
        case 129:
            return window->stickyKeys;
        case 128:
            return window->stickyMouseButtons;
        case 131:
            return window->lockKeyMods;
        case 130:
            return window->rawMouseMotion;
    }

    _glfwInputError(GLFW_INVALID_ENUM, "Invalid input mode 0x%08X", mode);
    return 0;
}
