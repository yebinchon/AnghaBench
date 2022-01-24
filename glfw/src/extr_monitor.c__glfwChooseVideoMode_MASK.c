#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int modeCount; TYPE_2__* modes; } ;
typedef  TYPE_1__ _GLFWmonitor ;
struct TYPE_8__ {scalar_t__ redBits; scalar_t__ greenBits; scalar_t__ blueBits; int width; int height; scalar_t__ refreshRate; } ;
typedef  TYPE_2__ GLFWvidmode ;

/* Variables and functions */
 scalar_t__ GLFW_DONT_CARE ; 
 unsigned int UINT_MAX ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

const GLFWvidmode* FUNC2(_GLFWmonitor* monitor,
                                        const GLFWvidmode* desired)
{
    int i;
    unsigned int sizeDiff, leastSizeDiff = UINT_MAX;
    unsigned int rateDiff, leastRateDiff = UINT_MAX;
    unsigned int colorDiff, leastColorDiff = UINT_MAX;
    const GLFWvidmode* current;
    const GLFWvidmode* closest = NULL;

    if (!FUNC1(monitor))
        return NULL;

    for (i = 0;  i < monitor->modeCount;  i++)
    {
        current = monitor->modes + i;

        colorDiff = 0;

        if (desired->redBits != GLFW_DONT_CARE)
            colorDiff += FUNC0(current->redBits - desired->redBits);
        if (desired->greenBits != GLFW_DONT_CARE)
            colorDiff += FUNC0(current->greenBits - desired->greenBits);
        if (desired->blueBits != GLFW_DONT_CARE)
            colorDiff += FUNC0(current->blueBits - desired->blueBits);

        sizeDiff = FUNC0((current->width - desired->width) *
                       (current->width - desired->width) +
                       (current->height - desired->height) *
                       (current->height - desired->height));

        if (desired->refreshRate != GLFW_DONT_CARE)
            rateDiff = FUNC0(current->refreshRate - desired->refreshRate);
        else
            rateDiff = UINT_MAX - current->refreshRate;

        if ((colorDiff < leastColorDiff) ||
            (colorDiff == leastColorDiff && sizeDiff < leastSizeDiff) ||
            (colorDiff == leastColorDiff && sizeDiff == leastSizeDiff && rateDiff < leastRateDiff))
        {
            closest = current;
            leastSizeDiff = sizeDiff;
            leastRateDiff = rateDiff;
            leastColorDiff = colorDiff;
        }
    }

    return closest;
}