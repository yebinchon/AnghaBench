#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int enabled; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* idle_mode ; 

__attribute__((used)) static void FUNC1(int mode)
{
	int i;

	if (idle_mode[mode].enabled)
		return;

	for (i = 0; i < FUNC0(idle_mode); i++)
		idle_mode[i].enabled = 0;

	idle_mode[mode].enabled = 1;
}