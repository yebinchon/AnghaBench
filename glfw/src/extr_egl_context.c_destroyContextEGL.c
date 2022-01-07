
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ handle; scalar_t__ surface; int * client; } ;
struct TYPE_9__ {scalar_t__ client; TYPE_2__ egl; } ;
struct TYPE_10__ {TYPE_3__ context; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_7__ {int display; } ;
struct TYPE_11__ {TYPE_1__ egl; } ;


 scalar_t__ EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_SURFACE ;
 scalar_t__ GLFW_OPENGL_API ;
 TYPE_6__ _glfw ;
 int _glfw_dlclose (int *) ;
 int eglDestroyContext (int ,scalar_t__) ;
 int eglDestroySurface (int ,scalar_t__) ;

__attribute__((used)) static void destroyContextEGL(_GLFWwindow* window)
{





    {
        if (window->context.egl.client)
        {
            _glfw_dlclose(window->context.egl.client);
            window->context.egl.client = ((void*)0);
        }
    }

    if (window->context.egl.surface)
    {
        eglDestroySurface(_glfw.egl.display, window->context.egl.surface);
        window->context.egl.surface = EGL_NO_SURFACE;
    }

    if (window->context.egl.handle)
    {
        eglDestroyContext(_glfw.egl.display, window->context.egl.handle);
        window->context.egl.handle = EGL_NO_CONTEXT;
    }
}
