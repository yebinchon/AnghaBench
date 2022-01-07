
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VkPhysicalDevice ;
typedef scalar_t__ PFN_vkEnumerateInstanceVersion ;
typedef scalar_t__ (* GLADuserptrloadfunc ) (char*,void*) ;


 int glad_vk_find_core_vulkan (int ) ;
 int glad_vk_find_extensions_vulkan (int ) ;
 int glad_vk_load_VK_EXT_debug_report (scalar_t__ (*) (char*,void*),void*) ;
 int glad_vk_load_VK_KHR_surface (scalar_t__ (*) (char*,void*),void*) ;
 int glad_vk_load_VK_KHR_swapchain (scalar_t__ (*) (char*,void*),void*) ;
 int glad_vk_load_VK_VERSION_1_0 (scalar_t__ (*) (char*,void*),void*) ;
 int glad_vk_load_VK_VERSION_1_1 (scalar_t__ (*) (char*,void*),void*) ;
 scalar_t__ vkEnumerateInstanceVersion ;

int gladLoadVulkanUserPtr( VkPhysicalDevice physical_device, GLADuserptrloadfunc load, void *userptr) {
    int version;




    version = glad_vk_find_core_vulkan( physical_device);
    if (!version) {
        return 0;
    }

    glad_vk_load_VK_VERSION_1_0(load, userptr);
    glad_vk_load_VK_VERSION_1_1(load, userptr);

    if (!glad_vk_find_extensions_vulkan( physical_device)) return 0;
    glad_vk_load_VK_EXT_debug_report(load, userptr);
    glad_vk_load_VK_KHR_surface(load, userptr);
    glad_vk_load_VK_KHR_swapchain(load, userptr);


    return version;
}
