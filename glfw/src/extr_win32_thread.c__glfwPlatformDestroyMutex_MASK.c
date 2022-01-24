#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  section; scalar_t__ allocated; } ;
struct TYPE_6__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWmutex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC2(_GLFWmutex* mutex)
{
    if (mutex->win32.allocated)
        FUNC0(&mutex->win32.section);
    FUNC1(mutex, 0, sizeof(_GLFWmutex));
}