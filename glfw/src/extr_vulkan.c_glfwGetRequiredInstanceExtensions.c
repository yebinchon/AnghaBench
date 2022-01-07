
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * extensions; } ;
struct TYPE_4__ {TYPE_1__ vk; } ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 int _GLFW_REQUIRE_LOADER ;
 TYPE_2__ _glfw ;
 int _glfwInitVulkan (int ) ;
 int assert (int ) ;

const char** glfwGetRequiredInstanceExtensions(uint32_t* count)
{
    assert(count != ((void*)0));

    *count = 0;

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (!_glfwInitVulkan(_GLFW_REQUIRE_LOADER))
        return ((void*)0);

    if (!_glfw.vk.extensions[0])
        return ((void*)0);

    *count = 2;
    return (const char**) _glfw.vk.extensions;
}
