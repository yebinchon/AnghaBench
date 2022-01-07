
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VkPhysicalDeviceType ;


 scalar_t__ VK_PHYSICAL_DEVICE_TYPE_CPU ;
 scalar_t__ VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU ;
 scalar_t__ VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU ;
 scalar_t__ VK_PHYSICAL_DEVICE_TYPE_OTHER ;
 scalar_t__ VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU ;

__attribute__((used)) static const char* get_device_type_name(VkPhysicalDeviceType type)
{
    if (type == VK_PHYSICAL_DEVICE_TYPE_OTHER)
        return "other";
    else if (type == VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU)
        return "integrated GPU";
    else if (type == VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU)
        return "discrete GPU";
    else if (type == VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU)
        return "virtual GPU";
    else if (type == VK_PHYSICAL_DEVICE_TYPE_CPU)
        return "CPU";

    return "unknown";
}
