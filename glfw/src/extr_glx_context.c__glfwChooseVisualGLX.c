
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int _GLFWwndconfig ;
typedef int _GLFWfbconfig ;
typedef int _GLFWctxconfig ;
struct TYPE_7__ {int depth; int * visual; } ;
typedef TYPE_2__ XVisualInfo ;
typedef int Visual ;
struct TYPE_6__ {int display; } ;
struct TYPE_8__ {TYPE_1__ x11; } ;
typedef int GLXFBConfig ;
typedef int GLFWbool ;


 int GLFW_FALSE ;
 int GLFW_FORMAT_UNAVAILABLE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 int XFree (TYPE_2__*) ;
 TYPE_4__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int chooseGLXFBConfig (int const*,int *) ;
 TYPE_2__* glXGetVisualFromFBConfig (int ,int ) ;

GLFWbool _glfwChooseVisualGLX(const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig,
                              Visual** visual, int* depth)
{
    GLXFBConfig native;
    XVisualInfo* result;

    if (!chooseGLXFBConfig(fbconfig, &native))
    {
        _glfwInputError(GLFW_FORMAT_UNAVAILABLE,
                        "GLX: Failed to find a suitable GLXFBConfig");
        return GLFW_FALSE;
    }

    result = glXGetVisualFromFBConfig(_glfw.x11.display, native);
    if (!result)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "GLX: Failed to retrieve Visual for GLXFBConfig");
        return GLFW_FALSE;
    }

    *visual = result->visual;
    *depth = result->depth;

    XFree(result);
    return GLFW_TRUE;
}
