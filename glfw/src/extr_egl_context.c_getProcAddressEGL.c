
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ client; } ;
struct TYPE_7__ {TYPE_1__ egl; } ;
struct TYPE_8__ {TYPE_2__ context; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_9__ {int contextSlot; } ;
typedef scalar_t__ GLFWglproc ;


 TYPE_5__ _glfw ;
 TYPE_3__* _glfwPlatformGetTls (int *) ;
 int _glfw_dlsym (scalar_t__,char const*) ;
 scalar_t__ eglGetProcAddress (char const*) ;

__attribute__((used)) static GLFWglproc getProcAddressEGL(const char* procname)
{
    _GLFWwindow* window = _glfwPlatformGetTls(&_glfw.contextSlot);

    if (window->context.egl.client)
    {
        GLFWglproc proc = (GLFWglproc) _glfw_dlsym(window->context.egl.client,
                                                   procname);
        if (proc)
            return proc;
    }

    return eglGetProcAddress(procname);
}
