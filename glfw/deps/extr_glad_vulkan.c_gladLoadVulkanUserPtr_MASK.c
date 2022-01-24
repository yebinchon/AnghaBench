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
typedef  int /*<<< orphan*/  VkPhysicalDevice ;
typedef  scalar_t__ PFN_vkEnumerateInstanceVersion ;
typedef  scalar_t__ (* GLADuserptrloadfunc ) (char*,void*) ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ (*) (char*,void*),void*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ (*) (char*,void*),void*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ (*) (char*,void*),void*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ (*) (char*,void*),void*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ (*) (char*,void*),void*) ; 
 scalar_t__ vkEnumerateInstanceVersion ; 

int FUNC7( VkPhysicalDevice physical_device, GLADuserptrloadfunc load, void *userptr) {
    int version;

#ifdef VK_VERSION_1_1
    vkEnumerateInstanceVersion  = (PFN_vkEnumerateInstanceVersion) load("vkEnumerateInstanceVersion", userptr);
#endif
    version = FUNC0( physical_device);
    if (!version) {
        return 0;
    }

    FUNC5(load, userptr);
    FUNC6(load, userptr);

    if (!FUNC1( physical_device)) return 0;
    FUNC2(load, userptr);
    FUNC3(load, userptr);
    FUNC4(load, userptr);


    return version;
}