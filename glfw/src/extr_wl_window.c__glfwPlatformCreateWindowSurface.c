
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sci ;
struct TYPE_10__ {int surface; } ;
struct TYPE_11__ {TYPE_2__ wl; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_12__ {int surface; int display; int sType; } ;
typedef TYPE_4__ VkWaylandSurfaceCreateInfoKHR ;
typedef int VkSurfaceKHR ;
typedef scalar_t__ VkResult ;
typedef int VkInstance ;
typedef int VkAllocationCallbacks ;
struct TYPE_9__ {int display; } ;
struct TYPE_13__ {TYPE_1__ wl; } ;
typedef scalar_t__ (* PFN_vkCreateWaylandSurfaceKHR ) (int ,TYPE_4__*,int const*,int *) ;


 int GLFW_API_UNAVAILABLE ;
 int GLFW_PLATFORM_ERROR ;
 scalar_t__ VK_ERROR_EXTENSION_NOT_PRESENT ;
 int VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR ;
 TYPE_8__ _glfw ;
 int _glfwGetVulkanResultString (scalar_t__) ;
 int _glfwInputError (int ,char*,...) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ vkGetInstanceProcAddr (int ,char*) ;

VkResult _glfwPlatformCreateWindowSurface(VkInstance instance,
                                          _GLFWwindow* window,
                                          const VkAllocationCallbacks* allocator,
                                          VkSurfaceKHR* surface)
{
    VkResult err;
    VkWaylandSurfaceCreateInfoKHR sci;
    PFN_vkCreateWaylandSurfaceKHR vkCreateWaylandSurfaceKHR;

    vkCreateWaylandSurfaceKHR = (PFN_vkCreateWaylandSurfaceKHR)
        vkGetInstanceProcAddr(instance, "vkCreateWaylandSurfaceKHR");
    if (!vkCreateWaylandSurfaceKHR)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "Wayland: Vulkan instance missing VK_KHR_wayland_surface extension");
        return VK_ERROR_EXTENSION_NOT_PRESENT;
    }

    memset(&sci, 0, sizeof(sci));
    sci.sType = VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR;
    sci.display = _glfw.wl.display;
    sci.surface = window->wl.surface;

    err = vkCreateWaylandSurfaceKHR(instance, &sci, allocator, surface);
    if (err)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to create Vulkan surface: %s",
                        _glfwGetVulkanResultString(err));
    }

    return err;
}
