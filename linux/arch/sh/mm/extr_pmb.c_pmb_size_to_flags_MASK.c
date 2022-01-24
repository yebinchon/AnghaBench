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
struct TYPE_3__ {unsigned long size; int flag; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* pmb_sizes ; 

__attribute__((used)) static int FUNC1(unsigned long size)
{
	int i;

	for (i = 0; i < FUNC0(pmb_sizes); i++)
		if (pmb_sizes[i].size == size)
			return pmb_sizes[i].flag;

	return 0;
}