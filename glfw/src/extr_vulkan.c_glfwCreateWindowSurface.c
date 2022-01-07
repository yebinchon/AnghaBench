
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ client; } ;
struct TYPE_8__ {TYPE_1__ context; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef scalar_t__ VkSurfaceKHR ;
typedef int VkResult ;
typedef scalar_t__ VkInstance ;
typedef int VkAllocationCallbacks ;
struct TYPE_7__ {int * extensions; } ;
struct TYPE_9__ {TYPE_2__ vk; } ;
typedef int GLFWwindow ;


 int GLFW_API_UNAVAILABLE ;
 int GLFW_INVALID_VALUE ;
 scalar_t__ GLFW_NO_API ;
 int VK_ERROR_EXTENSION_NOT_PRESENT ;
 int VK_ERROR_INITIALIZATION_FAILED ;
 int VK_ERROR_NATIVE_WINDOW_IN_USE_KHR ;
 scalar_t__ VK_NULL_HANDLE ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;
 int _GLFW_REQUIRE_LOADER ;
 TYPE_5__ _glfw ;
 int _glfwInitVulkan (int ) ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformCreateWindowSurface (scalar_t__,TYPE_3__*,int const*,scalar_t__*) ;
 int assert (int) ;

VkResult glfwCreateWindowSurface(VkInstance instance,
                                         GLFWwindow* handle,
                                         const VkAllocationCallbacks* allocator,
                                         VkSurfaceKHR* surface)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(instance != VK_NULL_HANDLE);
    assert(window != ((void*)0));
    assert(surface != ((void*)0));

    *surface = VK_NULL_HANDLE;

    _GLFW_REQUIRE_INIT_OR_RETURN(VK_ERROR_INITIALIZATION_FAILED);

    if (!_glfwInitVulkan(_GLFW_REQUIRE_LOADER))
        return VK_ERROR_INITIALIZATION_FAILED;

    if (!_glfw.vk.extensions[0])
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "Vulkan: Window surface creation extensions not found");
        return VK_ERROR_EXTENSION_NOT_PRESENT;
    }

    if (window->context.client != GLFW_NO_API)
    {
        _glfwInputError(GLFW_INVALID_VALUE,
                        "Vulkan: Window surface creation requires the window to have the client API set to GLFW_NO_API");
        return VK_ERROR_NATIVE_WINDOW_IN_USE_KHR;
    }

    return _glfwPlatformCreateWindowSurface(instance, window, allocator, surface);
}
