
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ _GLFWcursor ;
struct TYPE_6__ {TYPE_1__* cursorListHead; } ;
typedef int GLFWimage ;
typedef int GLFWcursor ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_4__ _glfw ;
 int _glfwPlatformCreateCursor (TYPE_1__*,int const*,int,int) ;
 int assert (int ) ;
 TYPE_1__* calloc (int,int) ;
 int glfwDestroyCursor (int *) ;

GLFWcursor* glfwCreateCursor(const GLFWimage* image, int xhot, int yhot)
{
    _GLFWcursor* cursor;

    assert(image != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    cursor = calloc(1, sizeof(_GLFWcursor));
    cursor->next = _glfw.cursorListHead;
    _glfw.cursorListHead = cursor;

    if (!_glfwPlatformCreateCursor(cursor, image, xhot, yhot))
    {
        glfwDestroyCursor((GLFWcursor*) cursor);
        return ((void*)0);
    }

    return (GLFWcursor*) cursor;
}
