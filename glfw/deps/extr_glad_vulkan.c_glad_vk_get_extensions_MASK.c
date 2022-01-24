#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ VkResult ;
typedef  int /*<<< orphan*/ * VkPhysicalDevice ;
struct TYPE_4__ {int /*<<< orphan*/  extensionName; } ;
typedef  TYPE_1__ VkExtensionProperties ;

/* Variables and functions */
 scalar_t__ VK_SUCCESS ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7( VkPhysicalDevice physical_device, uint32_t *out_extension_count, char ***out_extensions) {
    uint32_t i;
    uint32_t instance_extension_count = 0;
    uint32_t device_extension_count = 0;
    uint32_t max_extension_count;
    uint32_t total_extension_count;
    char **extensions;
    VkExtensionProperties *ext_properties;
    VkResult result;

    if (&vkEnumerateInstanceExtensionProperties == NULL || (physical_device != NULL && &vkEnumerateDeviceExtensionProperties == NULL)) {
        return 0;
    }

    result = FUNC6(NULL, &instance_extension_count, NULL);
    if (result != VK_SUCCESS) {
        return 0;
    }

    if (physical_device != NULL) {
        result = FUNC5(physical_device, NULL, &device_extension_count, NULL);
        if (result != VK_SUCCESS) {
            return 0;
        }
    }

    total_extension_count = instance_extension_count + device_extension_count;
    max_extension_count = instance_extension_count > device_extension_count
        ? instance_extension_count : device_extension_count;

    ext_properties = (VkExtensionProperties*) FUNC2(max_extension_count * sizeof(VkExtensionProperties));
    if (ext_properties == NULL) {
        return 0;
    }

    result = FUNC6(NULL, &instance_extension_count, ext_properties);
    if (result != VK_SUCCESS) {
        FUNC1((void*) ext_properties);
        return 0;
    }

    extensions = (char**) FUNC0(total_extension_count, sizeof(char*));
    if (extensions == NULL) {
        FUNC1((void*) ext_properties);
        return 0;
    }

    for (i = 0; i < instance_extension_count; ++i) {
        VkExtensionProperties ext = ext_properties[i];

        size_t extension_name_length = FUNC4(ext.extensionName) + 1;
        extensions[i] = (char*) FUNC2(extension_name_length * sizeof(char));
        FUNC3(extensions[i], ext.extensionName, extension_name_length * sizeof(char));
    }

    if (physical_device != NULL) {
        result = FUNC5(physical_device, NULL, &device_extension_count, ext_properties);
        if (result != VK_SUCCESS) {
            for (i = 0; i < instance_extension_count; ++i) {
                FUNC1((void*) extensions[i]);
            }
            FUNC1(extensions);
            return 0;
        }

        for (i = 0; i < device_extension_count; ++i) {
            VkExtensionProperties ext = ext_properties[i];

            size_t extension_name_length = FUNC4(ext.extensionName) + 1;
            extensions[instance_extension_count + i] = (char*) FUNC2(extension_name_length * sizeof(char));
            FUNC3(extensions[instance_extension_count + i], ext.extensionName, extension_name_length * sizeof(char));
        }
    }

    FUNC1((void*) ext_properties);

    *out_extension_count = total_extension_count;
    *out_extensions = extensions;

    return 1;
}