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
struct TYPE_5__ {char* extensionName; int specVersion; } ;
typedef  TYPE_1__ VkExtensionProperties ;

/* Variables and functions */
 TYPE_1__* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(void)
{
    FUNC2("Vulkan instance extensions:\n");

    uint32_t ep_count;
    FUNC3(NULL, &ep_count, NULL);
    VkExtensionProperties* ep = FUNC0(ep_count, sizeof(VkExtensionProperties));
    FUNC3(NULL, &ep_count, ep);

    for (uint32_t i = 0;  i < ep_count;  i++)
        FUNC2(" %s (spec version %u)\n", ep[i].extensionName, ep[i].specVersion);

    FUNC1(ep);
}