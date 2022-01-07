
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int VkPhysicalDevice ;
typedef int VkInstance ;
struct TYPE_5__ {char* extensionName; int specVersion; } ;
typedef TYPE_1__ VkExtensionProperties ;


 TYPE_1__* calloc (size_t,int) ;
 int free (TYPE_1__*) ;
 int printf (char*,...) ;
 int vkEnumerateDeviceExtensionProperties (int ,int *,size_t*,TYPE_1__*) ;

__attribute__((used)) static void list_vulkan_device_extensions(VkInstance instance, VkPhysicalDevice device)
{
    printf("Vulkan device extensions:\n");

    uint32_t ep_count;
    vkEnumerateDeviceExtensionProperties(device, ((void*)0), &ep_count, ((void*)0));
    VkExtensionProperties* ep = calloc(ep_count, sizeof(VkExtensionProperties));
    vkEnumerateDeviceExtensionProperties(device, ((void*)0), &ep_count, ep);

    for (uint32_t i = 0; i < ep_count; i++)
        printf(" %s (spec version %u)\n", ep[i].extensionName, ep[i].specVersion);

    free(ep);
}
