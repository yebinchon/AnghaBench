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
struct TYPE_2__ {scalar_t__ vlddes; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  g_net_dev ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static unsigned int FUNC4(int ndev, unsigned int work_to_do)
{
    unsigned int work_done = 0;

    FUNC1(ndev >= 0 && ndev < FUNC0(g_net_dev), "ndev = %d (wrong value)", ndev);

    while ( work_done < work_to_do && FUNC2(ndev)->vlddes > 0 ) {
        if ( FUNC3(ndev) < 0 )
            break;

        work_done++;
    }

    return work_done;
}