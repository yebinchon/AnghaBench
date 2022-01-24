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
struct TYPE_4__ {unsigned int size; unsigned short* red; unsigned short* green; unsigned short* blue; } ;
typedef  int /*<<< orphan*/  GLFWmonitor ;
typedef  TYPE_1__ GLFWgammaramp ;

/* Variables and functions */
 float FLT_MAX ; 
 int /*<<< orphan*/  GLFW_INVALID_VALUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,float) ; 
 float FUNC2 (float,float) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned short* FUNC4 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 float FUNC8 (float,float) ; 

void FUNC9(GLFWmonitor* handle, float gamma)
{
    unsigned int i;
    unsigned short* values;
    GLFWgammaramp ramp;
    const GLFWgammaramp* original;
    FUNC3(handle != NULL);
    FUNC3(gamma > 0.f);
    FUNC3(gamma <= FLT_MAX);

    FUNC0();

    if (gamma != gamma || gamma <= 0.f || gamma > FLT_MAX)
    {
        FUNC1(GLFW_INVALID_VALUE, "Invalid gamma value %f", gamma);
        return;
    }

    original = FUNC6(handle);
    if (!original)
        return;

    values = FUNC4(original->size, sizeof(unsigned short));

    for (i = 0;  i < original->size;  i++)
    {
        float value;

        // Calculate intensity
        value = i / (float) (original->size - 1);
        // Apply gamma curve
        value = FUNC8(value, 1.f / gamma) * 65535.f + 0.5f;
        // Clamp to value range
        value = FUNC2(value, 65535.f);

        values[i] = (unsigned short) value;
    }

    ramp.red = values;
    ramp.green = values;
    ramp.blue = values;
    ramp.size = original->size;

    FUNC7(handle, &ramp);
    FUNC5(values);
}