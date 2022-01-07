
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ VkResult ;
struct TYPE_8__ {int extensionName; } ;
typedef TYPE_2__ VkExtensionProperties ;
struct TYPE_7__ {int extensions; void* available; void* KHR_wayland_surface; void* KHR_xcb_surface; void* KHR_xlib_surface; void* MVK_macos_surface; void* KHR_win32_surface; void* KHR_surface; scalar_t__ EnumerateInstanceExtensionProperties; scalar_t__ GetInstanceProcAddr; void* handle; } ;
struct TYPE_9__ {TYPE_1__ vk; } ;
typedef scalar_t__ PFN_vkGetInstanceProcAddr ;
typedef scalar_t__ PFN_vkEnumerateInstanceExtensionProperties ;
typedef void* GLFWbool ;


 int GLFW_API_UNAVAILABLE ;
 void* GLFW_FALSE ;
 void* GLFW_TRUE ;
 int _GLFW_REQUIRE_LOADER ;
 char* _GLFW_VULKAN_LIBRARY ;
 TYPE_6__ _glfw ;
 int _glfwGetVulkanResultString (scalar_t__) ;
 int _glfwInputError (int ,char*,...) ;
 int _glfwPlatformGetRequiredInstanceExtensions (int ) ;
 int _glfwTerminateVulkan () ;
 void* _glfw_dlopen (char*) ;
 scalar_t__ _glfw_dlsym (void*,char*) ;
 TYPE_2__* calloc (size_t,int) ;
 int free (TYPE_2__*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ vkEnumerateInstanceExtensionProperties (int *,size_t*,TYPE_2__*) ;
 scalar_t__ vkGetInstanceProcAddr (int *,char*) ;

GLFWbool _glfwInitVulkan(int mode)
{
    VkResult err;
    VkExtensionProperties* ep;
    uint32_t i, count;

    if (_glfw.vk.available)
        return GLFW_TRUE;
    _glfw.vk.handle = _glfw_dlopen("libvulkan.so.1");

    if (!_glfw.vk.handle)
    {
        if (mode == _GLFW_REQUIRE_LOADER)
            _glfwInputError(GLFW_API_UNAVAILABLE, "Vulkan: Loader not found");

        return GLFW_FALSE;
    }

    _glfw.vk.GetInstanceProcAddr = (PFN_vkGetInstanceProcAddr)
        _glfw_dlsym(_glfw.vk.handle, "vkGetInstanceProcAddr");
    if (!_glfw.vk.GetInstanceProcAddr)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "Vulkan: Loader does not export vkGetInstanceProcAddr");

        _glfwTerminateVulkan();
        return GLFW_FALSE;
    }

    _glfw.vk.EnumerateInstanceExtensionProperties = (PFN_vkEnumerateInstanceExtensionProperties)
        vkGetInstanceProcAddr(((void*)0), "vkEnumerateInstanceExtensionProperties");
    if (!_glfw.vk.EnumerateInstanceExtensionProperties)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "Vulkan: Failed to retrieve vkEnumerateInstanceExtensionProperties");

        _glfwTerminateVulkan();
        return GLFW_FALSE;
    }


    err = vkEnumerateInstanceExtensionProperties(((void*)0), &count, ((void*)0));
    if (err)
    {

        if (mode == _GLFW_REQUIRE_LOADER)
        {
            _glfwInputError(GLFW_API_UNAVAILABLE,
                            "Vulkan: Failed to query instance extension count: %s",
                            _glfwGetVulkanResultString(err));
        }

        _glfwTerminateVulkan();
        return GLFW_FALSE;
    }

    ep = calloc(count, sizeof(VkExtensionProperties));

    err = vkEnumerateInstanceExtensionProperties(((void*)0), &count, ep);
    if (err)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "Vulkan: Failed to query instance extensions: %s",
                        _glfwGetVulkanResultString(err));

        free(ep);
        _glfwTerminateVulkan();
        return GLFW_FALSE;
    }

    for (i = 0; i < count; i++)
    {
        if (strcmp(ep[i].extensionName, "VK_KHR_surface") == 0)
            _glfw.vk.KHR_surface = GLFW_TRUE;
    }

    free(ep);

    _glfw.vk.available = GLFW_TRUE;

    _glfwPlatformGetRequiredInstanceExtensions(_glfw.vk.extensions);

    return GLFW_TRUE;
}
