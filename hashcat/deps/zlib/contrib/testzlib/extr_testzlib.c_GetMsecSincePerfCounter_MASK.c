#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int LowPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  scalar_t__ DWORDLONG ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

DWORD FUNC5(LARGE_INTEGER beginTime64,BOOL fComputeTimeQueryPerf)
{
    LARGE_INTEGER endTime64,ticksPerSecond,ticks;
    DWORDLONG ticksShifted,tickSecShifted;
    DWORD dwLog=16+0;
    DWORD dwRet;
    if ((!fComputeTimeQueryPerf) || (!FUNC3(&endTime64)))
        dwRet = (FUNC0() - beginTime64.LowPart)*1;
    else
    {
        FUNC2(&ticks,endTime64,beginTime64);
        FUNC4(&ticksPerSecond);


        {
            ticksShifted = FUNC1(*(DWORDLONG*)&ticks,dwLog);
            tickSecShifted = FUNC1(*(DWORDLONG*)&ticksPerSecond,dwLog);

        }

        dwRet = (DWORD)((((DWORD)ticksShifted)*1000)/(DWORD)(tickSecShifted));
        dwRet *=1;
    }
    return dwRet;
}