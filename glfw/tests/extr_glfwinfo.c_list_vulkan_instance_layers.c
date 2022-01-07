
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {char* layerName; int specVersion; char* description; } ;
typedef TYPE_1__ VkLayerProperties ;


 TYPE_1__* calloc (size_t,int) ;
 int free (TYPE_1__*) ;
 int printf (char*,...) ;
 int vkEnumerateInstanceLayerProperties (size_t*,TYPE_1__*) ;

__attribute__((used)) static void list_vulkan_instance_layers(void)
{
    printf("Vulkan instance layers:\n");

    uint32_t lp_count;
    vkEnumerateInstanceLayerProperties(&lp_count, ((void*)0));
    VkLayerProperties* lp = calloc(lp_count, sizeof(VkLayerProperties));
    vkEnumerateInstanceLayerProperties(&lp_count, lp);

    for (uint32_t i = 0; i < lp_count; i++)
    {
        printf(" %s (spec version %u) \"%s\"\n",
               lp[i].layerName,
               lp[i].specVersion >> 22,
               lp[i].description);
    }

    free(lp);
}
