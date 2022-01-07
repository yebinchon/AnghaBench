
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; int * buffer; int handle; } ;
struct TYPE_9__ {TYPE_1__ osmesa; } ;
struct TYPE_10__ {TYPE_2__ context; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_11__ {int contextSlot; } ;


 int GLFW_PLATFORM_ERROR ;
 int GL_UNSIGNED_BYTE ;
 int OSMesaMakeCurrent (int ,int *,int ,int,int) ;
 TYPE_7__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformGetFramebufferSize (TYPE_3__*,int*,int*) ;
 int _glfwPlatformSetTls (int *,TYPE_3__*) ;
 int * calloc (int,size_t) ;
 int free (int *) ;

__attribute__((used)) static void makeContextCurrentOSMesa(_GLFWwindow* window)
{
    if (window)
    {
        int width, height;
        _glfwPlatformGetFramebufferSize(window, &width, &height);


        if ((window->context.osmesa.buffer == ((void*)0)) ||
            (width != window->context.osmesa.width) ||
            (height != window->context.osmesa.height))
        {
            free(window->context.osmesa.buffer);


            window->context.osmesa.buffer = calloc(4, (size_t) width * height);
            window->context.osmesa.width = width;
            window->context.osmesa.height = height;
        }

        if (!OSMesaMakeCurrent(window->context.osmesa.handle,
                               window->context.osmesa.buffer,
                               GL_UNSIGNED_BYTE,
                               width, height))
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "OSMesa: Failed to make context current");
            return;
        }
    }

    _glfwPlatformSetTls(&_glfw.contextSlot, window);
}
