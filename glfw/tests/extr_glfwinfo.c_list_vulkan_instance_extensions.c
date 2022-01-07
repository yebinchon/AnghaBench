
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {char* extensionName; int specVersion; } ;
typedef TYPE_1__ VkExtensionProperties ;


 TYPE_1__* calloc (size_t,int) ;
 int free (TYPE_1__*) ;
 int printf (char*,...) ;
 int vkEnumerateInstanceExtensionProperties (int *,size_t*,TYPE_1__*) ;

__attribute__((used)) static void list_vulkan_instance_extensions(void)
{
    printf("Vulkan instance extensions:\n");

    uint32_t ep_count;
    vkEnumerateInstanceExtensionProperties(((void*)0), &ep_count, ((void*)0));
    VkExtensionProperties* ep = calloc(ep_count, sizeof(VkExtensionProperties));
    vkEnumerateInstanceExtensionProperties(((void*)0), &ep_count, ep);

    for (uint32_t i = 0; i < ep_count; i++)
        printf(" %s (spec version %u)\n", ep[i].extensionName, ep[i].specVersion);

    free(ep);
}
