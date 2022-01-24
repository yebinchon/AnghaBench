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
typedef  int midrangearea_t ;
struct TYPE_2__ {int numareas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__ aasworld ; 
 int* clusterareas ; 
 int* midrangeareas ; 

void FUNC2(void)
{
#ifdef ENABLE_ALTROUTING
	if (midrangeareas) FreeMemory(midrangeareas);
	midrangeareas = (midrangearea_t *) GetMemory(aasworld.numareas * sizeof(midrangearea_t));
	if (clusterareas) FreeMemory(clusterareas);
	clusterareas = (int *) GetMemory(aasworld.numareas * sizeof(int));
#endif
}