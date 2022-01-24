#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  VkPhysicalDevice ;
struct TYPE_5__ {char* layerName; int specVersion; char* description; } ;
typedef  TYPE_1__ VkLayerProperties ;
typedef  int /*<<< orphan*/  VkInstance ;

/* Variables and functions */
 TYPE_1__* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(VkInstance instance, VkPhysicalDevice device)
{
    FUNC2("Vulkan device layers:\n");

    uint32_t lp_count;
    FUNC3(device, &lp_count, NULL);
    VkLayerProperties* lp = FUNC0(lp_count, sizeof(VkLayerProperties));
    FUNC3(device, &lp_count, lp);

    for (uint32_t i = 0;  i < lp_count;  i++)
    {
        FUNC2(" %s (spec version %u) \"%s\"\n",
               lp[i].layerName,
               lp[i].specVersion >> 22,
               lp[i].description);
    }

    FUNC1(lp);
}