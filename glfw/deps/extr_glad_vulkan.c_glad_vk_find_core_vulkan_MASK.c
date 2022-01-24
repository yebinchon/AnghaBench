#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ VkResult ;
struct TYPE_3__ {int /*<<< orphan*/  apiVersion; } ;
typedef  TYPE_1__ VkPhysicalDeviceProperties ;
typedef  int /*<<< orphan*/ * VkPhysicalDevice ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int GLAD_VK_VERSION_1_0 ; 
 int GLAD_VK_VERSION_1_1 ; 
 scalar_t__ VK_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5( VkPhysicalDevice physical_device) {
    int major = 1;
    int minor = 0;

#ifdef VK_VERSION_1_1
    if (vkEnumerateInstanceVersion  != NULL) {
        uint32_t version;
        VkResult result;

        result = vkEnumerateInstanceVersion(&version);
        if (result == VK_SUCCESS) {
            major = (int) VK_VERSION_MAJOR(version);
            minor = (int) VK_VERSION_MINOR(version);
        }
    }
#endif

    if (physical_device != NULL && &vkGetPhysicalDeviceProperties  != NULL) {
        VkPhysicalDeviceProperties properties;
        FUNC4(physical_device, &properties);

        major = (int) FUNC1(properties.apiVersion);
        minor = (int) FUNC2(properties.apiVersion);
    }

    GLAD_VK_VERSION_1_0 = (major == 1 && minor >= 0) || major > 1;
    GLAD_VK_VERSION_1_1 = (major == 1 && minor >= 1) || major > 1;

    return FUNC0(major, minor);
}