#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VkPhysicalDevice ;

/* Variables and functions */
 void* GLAD_VK_EXT_debug_report ; 
 void* GLAD_VK_KHR_surface ; 
 void* GLAD_VK_KHR_swapchain ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char***) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int FUNC3( VkPhysicalDevice physical_device) {
    uint32_t extension_count = 0;
    char **extensions = NULL;
    if (!FUNC1(physical_device, &extension_count, &extensions)) return 0;

    GLAD_VK_EXT_debug_report = FUNC2("VK_EXT_debug_report", extension_count, extensions);
    GLAD_VK_KHR_surface = FUNC2("VK_KHR_surface", extension_count, extensions);
    GLAD_VK_KHR_swapchain = FUNC2("VK_KHR_swapchain", extension_count, extensions);

    FUNC0(extension_count, extensions);

    return 1;
}