#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int numareas; TYPE_1__* areasettings; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int) ;} ;
struct TYPE_4__ {int contents; } ;

/* Variables and functions */
 int AREACONTENTS_CLUSTERPORTAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 TYPE_3__ aasworld ; 
 TYPE_2__ botimport ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC2(void)
{
	int num, i;

	num = 0;
	for (i = 1; i < aasworld.numareas; i++)
	{
		if (aasworld.areasettings[i].contents & AREACONTENTS_CLUSTERPORTAL)
		{
			FUNC0("area %d is a forced portal area\r\n", i);
			num++;
		} //end if
	} //end for
	botimport.Print(PRT_MESSAGE, "%6d forced portal areas\n", num);
}