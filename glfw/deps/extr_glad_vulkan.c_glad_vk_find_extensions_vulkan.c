
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VkPhysicalDevice ;


 void* GLAD_VK_EXT_debug_report ;
 void* GLAD_VK_KHR_surface ;
 void* GLAD_VK_KHR_swapchain ;
 int glad_vk_free_extensions (int ,char**) ;
 int glad_vk_get_extensions (int ,int *,char***) ;
 void* glad_vk_has_extension (char*,int ,char**) ;

__attribute__((used)) static int glad_vk_find_extensions_vulkan( VkPhysicalDevice physical_device) {
    uint32_t extension_count = 0;
    char **extensions = ((void*)0);
    if (!glad_vk_get_extensions(physical_device, &extension_count, &extensions)) return 0;

    GLAD_VK_EXT_debug_report = glad_vk_has_extension("VK_EXT_debug_report", extension_count, extensions);
    GLAD_VK_KHR_surface = glad_vk_has_extension("VK_KHR_surface", extension_count, extensions);
    GLAD_VK_KHR_swapchain = glad_vk_has_extension("VK_KHR_swapchain", extension_count, extensions);

    glad_vk_free_extensions(extension_count, extensions);

    return 1;
}
