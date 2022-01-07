
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VkInstance ;
struct TYPE_3__ {int handle; } ;
struct TYPE_4__ {TYPE_1__ vk; } ;
typedef int * GLFWvkproc ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 int _GLFW_REQUIRE_LOADER ;
 TYPE_2__ _glfw ;
 int _glfwInitVulkan (int ) ;
 scalar_t__ _glfw_dlsym (int ,char const*) ;
 int assert (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ vkGetInstanceProcAddr (int ,char const*) ;

GLFWvkproc glfwGetInstanceProcAddress(VkInstance instance,
                                              const char* procname)
{
    GLFWvkproc proc;
    assert(procname != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (!_glfwInitVulkan(_GLFW_REQUIRE_LOADER))
        return ((void*)0);

    proc = (GLFWvkproc) vkGetInstanceProcAddr(instance, procname);







    if (!proc)
        proc = (GLFWvkproc) _glfw_dlsym(_glfw.vk.handle, procname);


    return proc;
}
