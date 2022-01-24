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
struct TYPE_2__ {int num_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UBC_CBR_CE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ sh4a_ubc ; 

__attribute__((used)) static void FUNC3(void)
{
	int i;

	for (i = 0; i < sh4a_ubc.num_events; i++)
		FUNC2(FUNC1(FUNC0(i)) & ~UBC_CBR_CE,
			     FUNC0(i));
}