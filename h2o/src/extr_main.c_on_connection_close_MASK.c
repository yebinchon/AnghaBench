#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int max_connections; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void)
{
    int prev_num_connections = FUNC1(-1);

    if (prev_num_connections == conf.max_connections) {
        /* ready to accept new connections. wake up all the threads! */
        FUNC0();
    }
}