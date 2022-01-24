#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  line ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {int /*<<< orphan*/  guid; TYPE_1__ member_0; } ;
typedef  TYPE_2__ _GLFWmapping ;
struct TYPE_12__ {int /*<<< orphan*/  mapping; scalar_t__ present; } ;
typedef  TYPE_3__ _GLFWjoystick ;
struct TYPE_13__ {int mappingCount; TYPE_3__* joysticks; TYPE_2__* mappings; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_FALSE ; 
 int GLFW_JOYSTICK_LAST ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_9__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t const) ; 
 scalar_t__ FUNC5 (TYPE_2__*,char*) ; 
 TYPE_2__* FUNC6 (TYPE_2__*,int) ; 
 size_t FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 

int FUNC9(const char* string)
{
    int jid;
    const char* c = string;

    FUNC1(string != NULL);

    FUNC0(GLFW_FALSE);

    while (*c)
    {
        if ((*c >= '0' && *c <= '9') ||
            (*c >= 'a' && *c <= 'f') ||
            (*c >= 'A' && *c <= 'F'))
        {
            char line[1024];

            const size_t length = FUNC7(c, "\r\n");
            if (length < sizeof(line))
            {
                _GLFWmapping mapping = {0};

                FUNC4(line, c, length);
                line[length] = '\0';

                if (FUNC5(&mapping, line))
                {
                    _GLFWmapping* previous = FUNC2(mapping.guid);
                    if (previous)
                        *previous = mapping;
                    else
                    {
                        _glfw.mappingCount++;
                        _glfw.mappings =
                            FUNC6(_glfw.mappings,
                                    sizeof(_GLFWmapping) * _glfw.mappingCount);
                        _glfw.mappings[_glfw.mappingCount - 1] = mapping;
                    }
                }
            }

            c += length;
        }
        else
        {
            c += FUNC7(c, "\r\n");
            c += FUNC8(c, "\r\n");
        }
    }

    for (jid = 0;  jid <= GLFW_JOYSTICK_LAST;  jid++)
    {
        _GLFWjoystick* js = _glfw.joysticks + jid;
        if (js->present)
            js->mapping = FUNC3(js);
    }

    return GLFW_TRUE;
}