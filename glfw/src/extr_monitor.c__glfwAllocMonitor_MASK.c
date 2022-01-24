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
struct TYPE_4__ {int widthMM; int heightMM; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ _GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int,int) ; 

_GLFWmonitor* FUNC2(const char* name, int widthMM, int heightMM)
{
    _GLFWmonitor* monitor = FUNC1(1, sizeof(_GLFWmonitor));
    monitor->widthMM = widthMM;
    monitor->heightMM = heightMM;

    if (name)
        monitor->name = FUNC0(name);

    return monitor;
}