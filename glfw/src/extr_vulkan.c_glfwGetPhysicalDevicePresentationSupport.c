
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ VkPhysicalDevice ;
typedef scalar_t__ VkInstance ;
struct TYPE_3__ {int * extensions; } ;
struct TYPE_4__ {TYPE_1__ vk; } ;


 int GLFW_API_UNAVAILABLE ;
 int GLFW_FALSE ;
 scalar_t__ VK_NULL_HANDLE ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int) ;
 int _GLFW_REQUIRE_LOADER ;
 TYPE_2__ _glfw ;
 int _glfwInitVulkan (int ) ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformGetPhysicalDevicePresentationSupport (scalar_t__,scalar_t__,int ) ;
 int assert (int) ;

int glfwGetPhysicalDevicePresentationSupport(VkInstance instance,
                                                     VkPhysicalDevice device,
                                                     uint32_t queuefamily)
{
    assert(instance != VK_NULL_HANDLE);
    assert(device != VK_NULL_HANDLE);

    _GLFW_REQUIRE_INIT_OR_RETURN(GLFW_FALSE);

    if (!_glfwInitVulkan(_GLFW_REQUIRE_LOADER))
        return GLFW_FALSE;

    if (!_glfw.vk.extensions[0])
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "Vulkan: Window surface creation extensions not found");
        return GLFW_FALSE;
    }

    return _glfwPlatformGetPhysicalDevicePresentationSupport(instance,
                                                             device,
                                                             queuefamily);
}
