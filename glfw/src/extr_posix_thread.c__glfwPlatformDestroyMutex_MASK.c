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
struct TYPE_5__ {int /*<<< orphan*/  handle; scalar_t__ allocated; } ;
struct TYPE_6__ {TYPE_1__ posix; } ;
typedef  TYPE_2__ _GLFWmutex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(_GLFWmutex* mutex)
{
    if (mutex->posix.allocated)
        FUNC1(&mutex->posix.handle);
    FUNC0(mutex, 0, sizeof(_GLFWmutex));
}