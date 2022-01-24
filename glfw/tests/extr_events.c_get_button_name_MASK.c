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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
#define  GLFW_MOUSE_BUTTON_LEFT 130 
#define  GLFW_MOUSE_BUTTON_MIDDLE 129 
#define  GLFW_MOUSE_BUTTON_RIGHT 128 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 

__attribute__((used)) static const char* FUNC1(int button)
{
    switch (button)
    {
        case GLFW_MOUSE_BUTTON_LEFT:
            return "left";
        case GLFW_MOUSE_BUTTON_RIGHT:
            return "right";
        case GLFW_MOUSE_BUTTON_MIDDLE:
            return "middle";
        default:
        {
            static char name[16];
            FUNC0(name, sizeof(name), "%i", button);
            return name;
        }
    }
}