
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; int (* GetProcAddressARB ) (int const*) ;int (* GetProcAddress ) (int const*) ;} ;
struct TYPE_4__ {TYPE_1__ glx; } ;
typedef int GLubyte ;
typedef int GLFWglproc ;


 TYPE_2__ _glfw ;
 int _glfw_dlsym (int ,char const*) ;
 int stub1 (int const*) ;
 int stub2 (int const*) ;

__attribute__((used)) static GLFWglproc getProcAddressGLX(const char* procname)
{
    if (_glfw.glx.GetProcAddress)
        return _glfw.glx.GetProcAddress((const GLubyte*) procname);
    else if (_glfw.glx.GetProcAddressARB)
        return _glfw.glx.GetProcAddressARB((const GLubyte*) procname);
    else
        return _glfw_dlsym(_glfw.glx.handle, procname);
}
