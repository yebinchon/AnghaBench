
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int handle; } ;
struct TYPE_4__ {TYPE_2__ osmesa; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef int GLint ;
typedef int GLFWwindow ;


 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 int OSMesaGetColorBuffer (int ,int*,int*,int*,void**) ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int) ;
 int _glfwInputError (int ,char*) ;
 int assert (int ) ;

int glfwGetOSMesaColorBuffer(GLFWwindow* handle, int* width,
                                     int* height, int* format, void** buffer)
{
    void* mesaBuffer;
    GLint mesaWidth, mesaHeight, mesaFormat;
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(window != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(GLFW_FALSE);

    if (!OSMesaGetColorBuffer(window->context.osmesa.handle,
                              &mesaWidth, &mesaHeight,
                              &mesaFormat, &mesaBuffer))
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "OSMesa: Failed to retrieve color buffer");
        return GLFW_FALSE;
    }

    if (width)
        *width = mesaWidth;
    if (height)
        *height = mesaHeight;
    if (format)
        *format = mesaFormat;
    if (buffer)
        *buffer = mesaBuffer;

    return GLFW_TRUE;
}
