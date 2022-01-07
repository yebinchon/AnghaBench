
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int callbacks; } ;
typedef TYPE_1__ _GLFWwindow ;
struct TYPE_7__ {TYPE_1__* windowListHead; int contextSlot; } ;
typedef int GLFWwindow ;


 int _GLFW_REQUIRE_INIT () ;
 TYPE_5__ _glfw ;
 int _glfwPlatformDestroyWindow (TYPE_1__*) ;
 TYPE_1__* _glfwPlatformGetTls (int *) ;
 int free (TYPE_1__*) ;
 int glfwMakeContextCurrent (int *) ;
 int memset (int *,int ,int) ;

void glfwDestroyWindow(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;

    _GLFW_REQUIRE_INIT();


    if (window == ((void*)0))
        return;


    memset(&window->callbacks, 0, sizeof(window->callbacks));



    if (window == _glfwPlatformGetTls(&_glfw.contextSlot))
        glfwMakeContextCurrent(((void*)0));

    _glfwPlatformDestroyWindow(window);


    {
        _GLFWwindow** prev = &_glfw.windowListHead;

        while (*prev != window)
            prev = &((*prev)->next);

        *prev = window->next;
    }

    free(window);
}
