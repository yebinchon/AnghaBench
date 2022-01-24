#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ offset; } ;
struct TYPE_4__ {TYPE_1__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 
 TYPE_2__ _glfw ; 
 double FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

double FUNC3(void)
{
    FUNC0(0.0);
    return (double) (FUNC2() - _glfw.timer.offset) /
        FUNC1();
}