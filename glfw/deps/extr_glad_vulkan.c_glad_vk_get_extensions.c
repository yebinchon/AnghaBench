
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ VkResult ;
typedef int * VkPhysicalDevice ;
struct TYPE_4__ {int extensionName; } ;
typedef TYPE_1__ VkExtensionProperties ;


 scalar_t__ VK_SUCCESS ;
 scalar_t__ calloc (int,int) ;
 int free (void*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,int ,size_t) ;
 int strlen (int ) ;
 scalar_t__ vkEnumerateDeviceExtensionProperties (int *,int *,int*,TYPE_1__*) ;
 scalar_t__ vkEnumerateInstanceExtensionProperties (int *,int*,TYPE_1__*) ;

__attribute__((used)) static int glad_vk_get_extensions( VkPhysicalDevice physical_device, uint32_t *out_extension_count, char ***out_extensions) {
    uint32_t i;
    uint32_t instance_extension_count = 0;
    uint32_t device_extension_count = 0;
    uint32_t max_extension_count;
    uint32_t total_extension_count;
    char **extensions;
    VkExtensionProperties *ext_properties;
    VkResult result;

    if (vkEnumerateInstanceExtensionProperties == ((void*)0) || (physical_device != ((void*)0) && vkEnumerateDeviceExtensionProperties == ((void*)0))) {
        return 0;
    }

    result = vkEnumerateInstanceExtensionProperties(((void*)0), &instance_extension_count, ((void*)0));
    if (result != VK_SUCCESS) {
        return 0;
    }

    if (physical_device != ((void*)0)) {
        result = vkEnumerateDeviceExtensionProperties(physical_device, ((void*)0), &device_extension_count, ((void*)0));
        if (result != VK_SUCCESS) {
            return 0;
        }
    }

    total_extension_count = instance_extension_count + device_extension_count;
    max_extension_count = instance_extension_count > device_extension_count
        ? instance_extension_count : device_extension_count;

    ext_properties = (VkExtensionProperties*) malloc(max_extension_count * sizeof(VkExtensionProperties));
    if (ext_properties == ((void*)0)) {
        return 0;
    }

    result = vkEnumerateInstanceExtensionProperties(((void*)0), &instance_extension_count, ext_properties);
    if (result != VK_SUCCESS) {
        free((void*) ext_properties);
        return 0;
    }

    extensions = (char**) calloc(total_extension_count, sizeof(char*));
    if (extensions == ((void*)0)) {
        free((void*) ext_properties);
        return 0;
    }

    for (i = 0; i < instance_extension_count; ++i) {
        VkExtensionProperties ext = ext_properties[i];

        size_t extension_name_length = strlen(ext.extensionName) + 1;
        extensions[i] = (char*) malloc(extension_name_length * sizeof(char));
        memcpy(extensions[i], ext.extensionName, extension_name_length * sizeof(char));
    }

    if (physical_device != ((void*)0)) {
        result = vkEnumerateDeviceExtensionProperties(physical_device, ((void*)0), &device_extension_count, ext_properties);
        if (result != VK_SUCCESS) {
            for (i = 0; i < instance_extension_count; ++i) {
                free((void*) extensions[i]);
            }
            free(extensions);
            return 0;
        }

        for (i = 0; i < device_extension_count; ++i) {
            VkExtensionProperties ext = ext_properties[i];

            size_t extension_name_length = strlen(ext.extensionName) + 1;
            extensions[instance_extension_count + i] = (char*) malloc(extension_name_length * sizeof(char));
            memcpy(extensions[instance_extension_count + i], ext.extensionName, extension_name_length * sizeof(char));
        }
    }

    free((void*) ext_properties);

    *out_extension_count = total_extension_count;
    *out_extensions = extensions;

    return 1;
}
