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
struct TYPE_4__ {int /*<<< orphan*/  hats; int /*<<< orphan*/  buttons; int /*<<< orphan*/  axes; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ _GLFWjoystick ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC2(_GLFWjoystick* js)
{
    FUNC0(js->name);
    FUNC0(js->axes);
    FUNC0(js->buttons);
    FUNC0(js->hats);
    FUNC1(js, 0, sizeof(_GLFWjoystick));
}