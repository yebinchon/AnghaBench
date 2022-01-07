
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* cursor; struct TYPE_6__* next; } ;
typedef TYPE_1__ _GLFWwindow ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ _GLFWcursor ;
struct TYPE_8__ {TYPE_2__* cursorListHead; TYPE_1__* windowListHead; } ;
typedef int GLFWwindow ;
typedef int GLFWcursor ;


 int _GLFW_REQUIRE_INIT () ;
 TYPE_5__ _glfw ;
 int _glfwPlatformDestroyCursor (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int glfwSetCursor (int *,int *) ;

void glfwDestroyCursor(GLFWcursor* handle)
{
    _GLFWcursor* cursor = (_GLFWcursor*) handle;

    _GLFW_REQUIRE_INIT();

    if (cursor == ((void*)0))
        return;


    {
        _GLFWwindow* window;

        for (window = _glfw.windowListHead; window; window = window->next)
        {
            if (window->cursor == cursor)
                glfwSetCursor((GLFWwindow*) window, ((void*)0));
        }
    }

    _glfwPlatformDestroyCursor(cursor);


    {
        _GLFWcursor** prev = &_glfw.cursorListHead;

        while (*prev != cursor)
            prev = &((*prev)->next);

        *prev = cursor->next;
    }

    free(cursor);
}
