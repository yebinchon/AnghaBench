
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ VkResult ;
struct TYPE_3__ {int apiVersion; } ;
typedef TYPE_1__ VkPhysicalDeviceProperties ;
typedef int * VkPhysicalDevice ;


 int GLAD_MAKE_VERSION (int,int) ;
 int GLAD_VK_VERSION_1_0 ;
 int GLAD_VK_VERSION_1_1 ;
 scalar_t__ VK_SUCCESS ;
 scalar_t__ VK_VERSION_MAJOR (int ) ;
 scalar_t__ VK_VERSION_MINOR (int ) ;
 scalar_t__ vkEnumerateInstanceVersion (int *) ;
 int vkGetPhysicalDeviceProperties (int *,TYPE_1__*) ;

__attribute__((used)) static int glad_vk_find_core_vulkan( VkPhysicalDevice physical_device) {
    int major = 1;
    int minor = 0;
    if (physical_device != ((void*)0) && vkGetPhysicalDeviceProperties != ((void*)0)) {
        VkPhysicalDeviceProperties properties;
        vkGetPhysicalDeviceProperties(physical_device, &properties);

        major = (int) VK_VERSION_MAJOR(properties.apiVersion);
        minor = (int) VK_VERSION_MINOR(properties.apiVersion);
    }

    GLAD_VK_VERSION_1_0 = (major == 1 && minor >= 0) || major > 1;
    GLAD_VK_VERSION_1_1 = (major == 1 && minor >= 1) || major > 1;

    return GLAD_MAKE_VERSION(major, minor);
}
